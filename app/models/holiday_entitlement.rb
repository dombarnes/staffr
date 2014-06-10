class HolidayEntitlement < ActiveRecord::Base
  belongs_to :staff

  validate :valid_date_range_required

  def valid_date_range_required
    if (holiday_year_start = holiday_year_end) && (holiday_year_start < holiday_year_end)
      errors.add(:holiday_year_end, "must be later than holiday_year_start")
    end
  end

  default_scope { order('staff_id', 'holiday_year_start') }
end
