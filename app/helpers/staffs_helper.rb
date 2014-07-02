module StaffsHelper

  def age
    Date.today - :dob
  end

  def current_holiday_entitlement_id(staff)
  @staff = staff
    @date_now = Time.zone.now
    @holiday_allowances = HolidayEntitlement.where(:staff_id => @staff.id).where("holiday_year_start <= ?", @date_now).where("holiday_year_end >= ?", @date_now).first
  end

  # def current_holiday_entitlement(staff)
  #   @staff = staff
  #   @date_now = Time.zone.now
  #   @holiday_allowances = HolidayEntitlement.where(:staff_id => @staff.id).where("holiday_year_start <= ?", @date_now).where("holiday_year_end >= ?", @date_now).first
  #   @holiday_allowances.holiday_days
  # end

  def holiday_available(staff)
    @staff = staff
    used_days = 0
    allowance = current_holiday_entitlement_id(staff).holiday_days
    used = Holiday.where("staff_id = ? AND start_date >= ? AND end_date <= ?", @staff.id, current_holiday_entitlement_id(staff).holiday_year_start, current_holiday_entitlement_id(staff).holiday_year_end)
    used.each do |h|
      date1 = Date.parse(h.start_date.strftime("%Y-%m-%d"))
      date2 = Date.parse(h.end_date.strftime("%Y-%m-%d"))
      used_days = used_days + date1.business_days_until(date2).to_i
    end
    allowance - used_days
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
