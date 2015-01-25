module StaffsHelper

  def age
    Date.today - :dob
  end

  def full_name(id)
    staff = Staff.find(id)
    full_name = staff.first_name + " " + staff.last_name
    full_name
  end

end


# @items = Item.includes(:priorities).where('company_id = ? and approved = ?', @company.id, true).order("priorities.position ASC")
