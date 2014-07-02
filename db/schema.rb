# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140630154754) do

  create_table "holiday_entitlements", force: true do |t|
    t.integer  "staff_id"
    t.datetime "holiday_year_start"
    t.decimal  "holiday_days"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "holiday_year_end"
  end

  create_table "holidays", force: true do |t|
    t.integer  "staff_id",     limit: 255
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "holiday_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "staffs", force: true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "city"
    t.string   "county"
    t.string   "post_code"
    t.string   "ni"
    t.date     "dob"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "tel_number"
    t.string   "mobile_number"
    t.string   "next_of_kin"
    t.string   "next_of_kin_tel"
    t.string   "sort_code"
    t.string   "account_number"
    t.string   "bank"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "staff_no"
  end

end
