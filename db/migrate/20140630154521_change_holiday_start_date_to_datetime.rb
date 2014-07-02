class ChangeHolidayStartDateToDatetime < ActiveRecord::Migration
  def change
  	  	change_column :holidays, :start_date, :datetime
  	  	change_column :holidays, :end_date, :datetime
  end
end
