class AddHolidayYearEndToHolidayEntitlements < ActiveRecord::Migration
  def change
    add_column :holiday_entitlements, :holiday_year_end, :datetime
  end
end
