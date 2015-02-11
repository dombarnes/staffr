class ChangeStaffStaffNoToSting < ActiveRecord::Migration
  def change
		change_column :staffs, :staff_no, :string
  end
end
