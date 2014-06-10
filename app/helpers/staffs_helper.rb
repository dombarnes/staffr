module StaffsHelper

  def age
    Date.today - :dob
  end

def current_holiday_entitlement(staff)
    @staff = staff
    @date_now = Time.zone.now
    # @holiday_allowance = 22
    @holiday_allowances = HolidayEntitlement.where(:staff_id => @staff.id).where("holiday_year_start <= ?", @date_now).where("holiday_year_end >= ?", @date_now).first
    @holiday_allowances.holiday_days
  end

  def holiday_available(staff)
    @staff = staff
    @holiday_allowance = "TODO"
    @date_now = Date.today
    @holiday_allowances = HolidayEntitlement.where(:staff_id => @staff.id)
    @holiday_start = @holiday_allowances.where(:holiday_year_start => @date_now)
    @holiday_end = @holiday_allowances.where(:holiday_year_end => @date_now)
    @holiday_allowance
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
