class ChangeHolidaysStaffIdToInteger < ActiveRecord::Migration
  def change
  	change_column :holidays, :staff_id, :integer, :limit => :null
  end
end
