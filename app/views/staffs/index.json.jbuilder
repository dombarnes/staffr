json.array!(@staffs) do |staff|
  json.extract! staff, :id, :first_name, :middle_name, :last_name, :address_line_1, :address_line_2, :city, :county, :post_code, :ni, :dob, :start_date, :end_date, :tel_number, :mobile_number, :next_of_kin, :next_of_kin_tel, :sort_code, :account_number, :bank
  json.url staff_url(staff, format: :json)
end
