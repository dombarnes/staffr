class AddEmailToUser < ActiveRecord::Migration
  def change
  	add_column :staffs, :email, :string, null: false
  end
end
