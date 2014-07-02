class LeaveType < ActiveRecord::Base

	validates :title, :paid, on: :update, presence: { :message => "%{value} fields can't be blank" }
	default_scope { order('title') }
end
