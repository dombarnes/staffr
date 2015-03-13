# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Heroku Dev Seed Data
Staff.create!(	first_name: 'John',
				middle_name: '',
				last_name: 'Appleseed',
				address_line_1: '1 Infinite Loop',
				address_line_2: '',
				city: 'Cupertino',
				county: 'London',
				post_code: 'W1 1AP',
				ni: 'AP123456C',
				dob: '1984-01-24',
				start_date: '2000-01-02',
				mobile_number: '',
				tel_number: '',
				next_of_kin: 'Jane Appleseed',
				next_of_kin_tel: '',
				sort_code: '112233',
				account_number: '01234567',
				bank: 'Apple Bank'
				)
HolidayEntitlement.create!(	
				staff_id: '1',
				holiday_year_start: '2015-01-01',
				holiday_year_end: '2015-12-31',
				holiday_days: '40'
	)
