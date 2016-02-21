LeaveType.create!([
  {title: "Annual Leave", paid: true},
  {title: "Compassionate Leave", paid: true},
  {title: "Maternity Leave", paid: true},
  {title: "Paternity Leave", paid: false},
  {title: "Sick Leave (Paid)", paid: true},
  {title: "Sick Leave (Unpaid)", paid: false},
  {title: "Time off In Lieu", paid: true}
])
Staff.create!([
  {first_name: "Dominic", middle_name: "Ross", last_name: "Barnes", address_line_1: "316 Quinton Road", address_line_2: "", city: "Birmingham", county: "West Midlands", post_code: "B17 0RE", ni: "JN953205A", dob: "1983-10-01", start_date: "2013-01-01", end_date: nil, tel_number: "01212437390", mobile_number: "07974418078", next_of_kin: "Katie McGrainor", next_of_kin_tel: "07780522096", sort_code: "112233", account_number: "01234567", bank: "Lloyds Bank", staff_no: "10", job_title: "Technical Architect", location: "Birmingham", profile_photo_file_name: "avatar.jpg", profile_photo_content_type: "image/jpeg", profile_photo_file_size: 20664, profile_photo_updated_at: "2015-03-13 22:39:47", email: "dom@trilby.co.uk"},
  {first_name: "Katie", middle_name: "Marie", last_name: "McGrainor", address_line_1: "316 Quinton Road", address_line_2: "Harborne", city: "Birmingham", county: "West Midlands", post_code: "B17 0RE", ni: "AA123456B", dob: "1984-05-06", start_date: "2004-11-04", end_date: nil, tel_number: "", mobile_number: "07780522096", next_of_kin: "Dominic Barnes", next_of_kin_tel: "07974418078", sort_code: "112233", account_number: "98765432", bank: "TSB Bank", staff_no: "B123", job_title: "", location: "", profile_photo_file_name: nil, profile_photo_content_type: nil, profile_photo_file_size: nil, profile_photo_updated_at: nil, email: "dom@example.com"},
  {first_name: "Hayley", middle_name: "", last_name: "Williams", address_line_1: "1 Paramore Drive", address_line_2: "", city: "Tennessee", county: "", post_code: "12345", ni: "AA001122B", dob: "1988-12-27", start_date: "2004-10-01", end_date: "2005-12-31", tel_number: "", mobile_number: "", next_of_kin: "", next_of_kin_tel: "", sort_code: "000000", account_number: "00000000", bank: "", staff_no: "A123", job_title: "", location: "", profile_photo_file_name: nil, profile_photo_content_type: nil, profile_photo_file_size: nil, profile_photo_updated_at: nil, email: "domb@example.com"}
])

Holiday.create!([
  {staff_id: 1, start_date: "2014-05-06 00:00:00", end_date: "2014-05-09 00:00:00", leave_type_id: 4},
  {staff_id: 1, start_date: "2014-06-02 00:00:00", end_date: "2014-06-02 00:00:00", leave_type_id: 1},
  {staff_id: 1, start_date: "2014-08-18 00:00:00", end_date: "2014-08-22 00:00:00", leave_type_id: 1},
  {staff_id: 1, start_date: "2014-09-29 00:00:00", end_date: "2014-10-03 00:00:00", leave_type_id: 1},
  {staff_id: 2, start_date: "2014-10-01 00:00:00", end_date: "2014-10-31 00:00:00", leave_type_id: 1},
  {staff_id: 1, start_date: "2014-12-15 00:00:00", end_date: "2014-12-18 00:00:00", leave_type_id: 1},
  {staff_id: 1, start_date: "2015-01-01 00:00:00", end_date: "2015-01-31 00:00:00", leave_type_id: 1},
  {staff_id: 1, start_date: "2016-01-01 00:00:00", end_date: "2016-01-31 00:00:00", leave_type_id: 1}
])
HolidayEntitlement.create!([
  {staff_id: 1, holiday_year_start: "2012-01-01 00:00:00", holiday_days: "12.0", holiday_year_end: "2012-12-01 00:00:00"},
  {staff_id: 1, holiday_year_start: "2013-01-01 00:00:00", holiday_days: "13.0", holiday_year_end: "2013-12-01 00:00:00"},
  {staff_id: 1, holiday_year_start: "2014-01-01 00:00:00", holiday_days: "22.0", holiday_year_end: "2014-12-30 00:00:00"},
  {staff_id: 1, holiday_year_start: "2015-01-01 00:00:00", holiday_days: "25.0", holiday_year_end: "2015-12-31 00:00:00"},
  {staff_id: 2, holiday_year_start: "2014-05-06 00:00:00", holiday_days: "28.0", holiday_year_end: "2014-12-31 00:00:00"},
  {staff_id: 4, holiday_year_start: "2014-12-01 00:00:00", holiday_days: "1.83", holiday_year_end: "2014-12-31 00:00:00"},
  {staff_id: 4, holiday_year_start: "2015-01-01 00:00:00", holiday_days: "22.0", holiday_year_end: "2015-01-01 00:00:00"}
])
