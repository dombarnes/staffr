class AddStaffnoToStaffs < ActiveRecord::Migration
  def change
    add_column :staffs, :staff_no, :integer
  end
end
