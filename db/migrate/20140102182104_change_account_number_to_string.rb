class ChangeAccountNumberToString < ActiveRecord::Migration
  def change
  	change_column :staffs, :sort_code, :string, null: false, default: ''
	change_column :staffs, :account_number, :string, null: false, default: ''
  end
end
