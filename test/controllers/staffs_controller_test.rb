require 'test_helper'

class StaffsControllerTest < ActionController::TestCase
  setup do
    @staff = staffs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:staffs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create staff" do
    assert_difference('Staff.count') do
      post :create, staff: { account_number: @staff.account_number, address_line_1: @staff.address_line_1, address_line_2: @staff.address_line_2, bank: @staff.bank, city: @staff.city, county: @staff.county, dob: @staff.dob, end_date: @staff.end_date, first_name: @staff.first_name, last_name: @staff.last_name, middle_name: @staff.middle_name, mobile_number: @staff.mobile_number, next_of_kin: @staff.next_of_kin, next_of_kin_tel: @staff.next_of_kin_tel, ni: @staff.ni, post_code: @staff.post_code, sort_code: @staff.sort_code, start_date: @staff.start_date, tel_number: @staff.tel_number }
    end

    assert_redirected_to staff_path(assigns(:staff))
  end

  test "should show staff" do
    get :show, id: @staff
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @staff
    assert_response :success
  end

  test "should update staff" do
    patch :update, id: @staff, staff: { account_number: @staff.account_number, address_line_1: @staff.address_line_1, address_line_2: @staff.address_line_2, bank: @staff.bank, city: @staff.city, county: @staff.county, dob: @staff.dob, end_date: @staff.end_date, first_name: @staff.first_name, last_name: @staff.last_name, middle_name: @staff.middle_name, mobile_number: @staff.mobile_number, next_of_kin: @staff.next_of_kin, next_of_kin_tel: @staff.next_of_kin_tel, ni: @staff.ni, post_code: @staff.post_code, sort_code: @staff.sort_code, start_date: @staff.start_date, tel_number: @staff.tel_number }
    assert_redirected_to staff_path(assigns(:staff))
  end

  test "should destroy staff" do
    assert_difference('Staff.count', -1) do
      delete :destroy, id: @staff
    end

    assert_redirected_to staffs_path
  end
end
