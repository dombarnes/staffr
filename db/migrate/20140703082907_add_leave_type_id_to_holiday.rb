class AddLeaveTypeIdToHoliday < ActiveRecord::Migration
  def change
  	remove_column :holidays, :holiday_type
  	add_column :holidays, :leave_type_id, :integer
  end
end
