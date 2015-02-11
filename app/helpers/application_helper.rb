module ApplicationHelper

	def redirect_back_or(default)
		  redirect_to(session[:return_to] || default)
		  session.delete(:return_to)
	end

	# calculate total entitlement for current period
	def current_holiday_entitlement_id(staff)
		@holiday_allowances = 0
		@staff = staff
		@date_now = Time.zone.now
		@holiday_allowances = HolidayEntitlement.where(:staff_id => @staff.id).where("holiday_year_start <= ?", @date_now).where("holiday_year_end >= ?", @date_now).first
	end

	# calculate remaining holday for given staff member for current period
	def holiday_available(staff)
		@staff = staff
		@used_days = 0
		@remaining = 0
		@allowance = current_holiday_entitlement_id(@staff).try(:holiday_days)
		used = Holiday.joins('LEFT OUTER JOIN leave_types ON holidays.leave_type_id = leave_types.id').select('distinct leave_types.title, leave_types.paid, holidays.start_date, holidays.end_date').where("holidays.staff_id = ? AND holidays.start_date >= ? AND holidays.end_date <= ? AND leave_types.paid = ?", @staff.id, current_holiday_entitlement_id(@staff).holiday_year_start, current_holiday_entitlement_id(@staff).holiday_year_end, true)
		used.each do |h|
			date1 = Date.parse(h.start_date.strftime("%Y-%m-%d"))
			date2 = Date.parse(h.end_date.strftime("%Y-%m-%d"))
			@used_days = @used_days + date1.business_days_until(date2).to_i
		end
		@remaining = @allowance - @used_days
		@remaining		
	end

end
