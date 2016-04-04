require 'test_helper'

class TeammembershipsControllerTest < ActionController::TestCase
  setup do
    @teammembership = teammemberships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teammemberships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teammembership" do
    assert_difference('Teammembership.count') do
      post :create, teammembership: { employee_id: @teammembership.employee_id, team_id: @teammembership.team_id }
    end

    assert_redirected_to teammembership_path(assigns(:teammembership))
  end

  test "should show teammembership" do
    get :show, id: @teammembership
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teammembership
    assert_response :success
  end

  test "should update teammembership" do
    patch :update, id: @teammembership, teammembership: { employee_id: @teammembership.employee_id, team_id: @teammembership.team_id }
    assert_redirected_to teammembership_path(assigns(:teammembership))
  end

  test "should destroy teammembership" do
    assert_difference('Teammembership.count', -1) do
      delete :destroy, id: @teammembership
    end

    assert_redirected_to teammemberships_path
  end
end
