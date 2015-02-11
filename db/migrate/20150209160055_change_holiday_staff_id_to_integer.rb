class ChangeHolidayStaffIdToInteger < ActiveRecord::Migration
  def change
  	  	 change_column :holidays, :staff_id, 'integer USING CAST(staff_id AS integer)'
  end
end
