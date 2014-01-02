require 'test_helper'

class HolidayEntitlementsControllerTest < ActionController::TestCase
  setup do
    @holiday_entitlement = holiday_entitlements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:holiday_entitlements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create holiday_entitlement" do
    assert_difference('HolidayEntitlement.count') do
      post :create, holiday_entitlement: { holiday_days: @holiday_entitlement.holiday_days, holiday_year_start: @holiday_entitlement.holiday_year_start, staff_id: @holiday_entitlement.staff_id }
    end

    assert_redirected_to holiday_entitlement_path(assigns(:holiday_entitlement))
  end

  test "should show holiday_entitlement" do
    get :show, id: @holiday_entitlement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @holiday_entitlement
    assert_response :success
  end

  test "should update holiday_entitlement" do
    patch :update, id: @holiday_entitlement, holiday_entitlement: { holiday_days: @holiday_entitlement.holiday_days, holiday_year_start: @holiday_entitlement.holiday_year_start, staff_id: @holiday_entitlement.staff_id }
    assert_redirected_to holiday_entitlement_path(assigns(:holiday_entitlement))
  end

  test "should destroy holiday_entitlement" do
    assert_difference('HolidayEntitlement.count', -1) do
      delete :destroy, id: @holiday_entitlement
    end

    assert_redirected_to holiday_entitlements_path
  end
end
