class ChangeDateFormatInHolidayEntitlements < ActiveRecord::Migration
  def change
  	change_column :holiday_entitlements, :holiday_year_start, :datetime
  end
end
