class AddStaffnoToStaffs < ActiveRecord::Migration
  def change
    add_column :staffs, :staff_no, :integer, null: false
  end
end
