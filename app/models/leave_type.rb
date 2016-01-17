class LeaveType < ActiveRecord::Base
	has_many :holidays

	validates :title, :paid, on: :update, presence: { :message => "%{value} fields can't be blank" }
	default_scope { order('title') }
end
