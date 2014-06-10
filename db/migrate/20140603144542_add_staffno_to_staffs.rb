class AddStaffnoToStaffs < ActiveRecord::Migration
  def change
    add_column :staffs, :staff_no, :string
  end
end
