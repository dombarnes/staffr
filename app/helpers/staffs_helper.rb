module StaffsHelper

	def age
		Date.today - :dob
	end

	def holiday_available(staff)
		holiday_allowance = 0
		date_now = Time.now.strftime("%Y-%m-%d")
		holiday_allowance = HolidayEntitlement.where(:staff_id => staff, date_now => :holiday_year_start..:holiday_year_end).first
	end

	# def business_days_between(date1, date2)
	#   business_days = 0
	#   date = date2
	#   while date > date1
	#    business_days = business_days + 1 unless date.saturday? or date.sunday?
	#    date = date - 1.day
	#   end
	#   business_days
	# end


end
