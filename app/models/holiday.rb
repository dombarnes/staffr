class Holiday < ActiveRecord::Base
	validates_presence_of [:staff_id, :start_date, :end_date, :holiday_type]


HOLIDAY_TYPES = ["Annual Leave", "Compasionate Leave", "Sick Leave", "Bank Holiday" ]

end
