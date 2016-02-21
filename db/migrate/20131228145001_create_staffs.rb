class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :first_name, null: false
      t.string :middle_name, null: false, default: ''
      t.string :last_name, null: false
      t.string :address_line_1, null: false
      t.string :address_line_2, null: false, default: ''
      t.string :city, null: false
      t.string :county, null: false
      t.string :post_code, null: false
      t.string :ni, null: false
      t.date :dob, null: false
      t.date :start_date, null: false
      t.date :end_date
      t.string :tel_number, null: false, default: ''
      t.string :mobile_number, null: false, default: ''
      t.string :next_of_kin, null: false, default: ''
      t.string :next_of_kin_tel, null: false, default: ''
      t.integer :sort_code, null: false
      t.integer :account_number, null: false
      t.string :bank, null: false, default: ''

      t.timestamps
    end
  end
end
