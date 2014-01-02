class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :address_line_1
      t.string :address_line_2
      t.string :city
      t.string :county
      t.string :post_code
      t.string :ni
      t.date :dob
      t.date :start_date
      t.date :end_date
      t.string :tel_number
      t.string :mobile_number
      t.string :next_of_kin
      t.string :next_of_kin_tel
      t.integer :sort_code
      t.integer :account_number
      t.string :bank

      t.timestamps
    end
  end
end
