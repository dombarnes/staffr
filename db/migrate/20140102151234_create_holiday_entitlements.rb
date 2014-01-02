class CreateHolidayEntitlements < ActiveRecord::Migration
  def change
    create_table :holiday_entitlements do |t|
      t.integer :staff_id
      t.date :holiday_year_start
      t.decimal :holiday_days

      t.timestamps
    end
  end
end
