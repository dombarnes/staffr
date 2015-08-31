module StaffsHelper

  def age staff
    Date.today - staff.dob
  end

  def full_name(id)
    staff = Staff.find(id)
    full_name = staff.first_name + " " + staff.last_name
    full_name
  end

  def length_of_service staff
	   distance_of_time_in_words(Date.current, staff.start_date)
  end

end
