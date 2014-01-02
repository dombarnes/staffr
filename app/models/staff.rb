class Staff < ActiveRecord::Base
  validates_presence_of [:first_name, :last_name, :dob, :address_line_1, :post_code, :start_date, :sort_code, :account_number], :on => [:create, :update], :message => "can't be blank"
  validates_uniqueness_of :ni, :on => :create, :message => "NI Number must be unique"
end
