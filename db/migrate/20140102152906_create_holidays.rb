class CreateHolidays < ActiveRecord::Migration
  def change
    create_table :holidays do |t|
      t.string :staff_id
      t.date :start_date
      t.date :end_date
      t.string :holiday_type

      t.timestamps
    end
  end
end
