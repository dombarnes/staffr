class LeaveType < ActiveRecord::Base
	has_and_belongs_to_many :holidays

	validates :title, :paid, on: :update, presence: { :message => "%{value} fields can't be blank" }
	default_scope { order('title') }
end
