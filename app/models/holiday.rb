class Holiday < ActiveRecord::Base
	belongs_to :staff
	validates_presence_of [:staff_id, :start_date, :end_date, :holiday_type]


HOLIDAY_TYPES = ['Annual Leave', 'Bank Holiday', 'Compasionate Leave', 'Long Term Sick Leave', 'Maternity Leave', 'Paternity Leave', 'Sick Leave']

default_scope { order('start_date') }

end
