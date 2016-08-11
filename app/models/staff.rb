class Staff < ActiveRecord::Base
	has_many :holiday_entitlements
	has_many :holidays
	# accepts_nested_attributes_for :holiday_entitlements

	has_attached_file :profile_photo, :styles => { :medium => "198x198>", :thumb => "45x45>" }, :default_url => "/images/:style/default-user.png"
  validates_attachment_content_type :profile_photo, :content_type => /\Aimage\/.*\Z/
  
  validates_presence_of :start_date, on: :create
	
	validates :first_name, :last_name, :dob, :address_line_1, :post_code, :start_date, :sort_code, :account_number, on: :update, presence: { :message => "%{value} fields can't be blank" }
	
	validates_uniqueness_of :ni, on: :create, :message => "NI Number must be unique"
	validates_uniqueness_of :email, on: :create, :message => "Email addresses must be unique"
	validates_uniqueness_of :staff_no, on: :create, :message => "Staff numbers must be unique"
	
	validates_length_of :ni, :is => 9
	validates_length_of :account_number, :is => 8
	validates_length_of :sort_code, :is => 6

	default_scope { order('last_name', 'first_name')}
	scope :active, -> { where(:end_date => nil) }
	scope :all_staff, -> { order('last_name', 'first_name')}

	# convert to %w( ) https://github.com/styleguide/ruby
	COUNTY_LIST = ["Avon", "Bedfordshire", "Berkshire", "Borders", "Buckinghamshire", 
		"Cambridgeshire", "Central", "Cheshire", "Cleveland", "Clwyd", "Cornwall", 
		"County Antrim", "County Armagh", "County Down", "County Fermanagh", 
		"County Londonderry", "County Tyrone", "Cumbria", "Derbyshire", "Devon", 
		"Dorset", "Dumfries and Galloway", "Durham", "Dyfed", "East Sussex", "Essex", 
		"Fife", "Gloucestershire","Grampian", "Greater Manchester", "Gwent", 
		"Gwynedd County", "Hampshire", "Herefordshire", "Hertfordshire", 
		"Highlands and Islands" , "Humberside", "Isle of Wight", "Kent", "Lancashire", 
		"Leicestershire", "Lincolnshire", "Lothian", "Merseyside", "Mid Glamorgan", 
		"Norfolk", "North Yorkshire", "Northamptonshire", "Northumberland", 
		"Nottinghamshire", "Oxfordshire", "Powys", "Rutland", "Shropshire", "Somerset", 
		"South Glamorgan", "South Yorkshire", "Staffordshire", "Strathclyde", "Suffolk", 
		"Surrey", "Tayside", "Tyne and Wear", "Warwickshire", "West Glamorgan", 
		"West Midlands", "West Sussex", "West Yorkshire", "Wiltshire", "Worcestershire" ]

	def full_name
		[first_name, last_name].join(' ')
	end
end
