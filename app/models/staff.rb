class Staff < ActiveRecord::Base
  validates_presence_of [:first_name, :last_name, :dob, :address_line_1, :post_code, :start_date, :sort_code, :account_number], :on => :update, :message => "Field can't be blank"
  validates_uniqueness_of :ni, :on => :create, :message => "NI Number must be unique"
  validates_length_of :ni, :is => 9
  validates_length_of :account_number, :is => 8
  validates_length_of :sort_code, :is => 6


COUNTY_LIST = ["Avon", "Bedfordshire", "Berkshire", "Borders", "Buckinghamshire", "Cambridgeshire", "Central", "Cheshire", "Cleveland", "Clwyd", "Cornwall", "County Antrim", "County Armagh", "County Down", "County Fermanagh", "County Londonderry", "County Tyrone", "Cumbria", "Derbyshire", "Devon", "Dorset", "Dumfries and Galloway", "Durham", "Dyfed", "East Sussex", "Essex", "Fife", "Gloucestershire","Grampian", "Greater Manchester", "Gwent", "Gwynedd County", "Hampshire", "Herefordshire", "Hertfordshire", "Highlands and Islands" , "Humberside", "Isle of Wight", "Kent", "Lancashire", "Leicestershire", "Lincolnshire", "Lothian", "Merseyside", "Mid Glamorgan", "Norfolk", "North Yorkshire", "Northamptonshire", "Northumberland", "Nottinghamshire", "Oxfordshire", "Powys", "Rutland", "Shropshire", "Somerset", "South Glamorgan", "South Yorkshire", "Staffordshire", "Strathclyde", "Suffolk", "Surrey", "Tayside", "Tyne and Wear", "Warwickshire", "West Glamorgan", "West Midlands", "West Sussex", "West Yorkshire", "Wiltshire", "Worcestershire" ]



	def full_name
		"#{first_name} #{last_name}"
	end

end
