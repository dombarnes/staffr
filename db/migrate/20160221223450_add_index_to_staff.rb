class AddIndexToStaff < ActiveRecord::Migration
  def change
    add_index :staffs, :ni, unique: true
    add_index :staffs, :staff_no, unique: true
    add_index :staffs, :email, unique: true
  end
end
