class ChangeAccountNumberToString < ActiveRecord::Migration
  def change
  	change_column :staffs, :sort_code, :string
	change_column :staffs, :account_number, :string
  end
end
