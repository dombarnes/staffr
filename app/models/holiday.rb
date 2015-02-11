class Holiday < ActiveRecord::Base
	belongs_to :staff
	has_one :leave_type
	validates_presence_of [:staff_id, :start_date, :end_date, :leave_type_id]

	default_scope { order('start_date') }

end
