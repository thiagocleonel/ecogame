require 'test_helper'

class PremiationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @premiation = premiations(:one)
  end

  test "should get index" do
    get premiations_url
    assert_response :success
  end

  test "should get new" do
    get new_premiation_url
    assert_response :success
  end

  test "should create premiation" do
    assert_difference('Premiation.count') do
      post premiations_url, params: { premiation: { badge_id: @premiation.badge_id, citizen_id: @premiation.citizen_id } }
    end

    assert_redirected_to premiation_url(Premiation.last)
  end

  test "should show premiation" do
    get premiation_url(@premiation)
    assert_response :success
  end

  test "should get edit" do
    get edit_premiation_url(@premiation)
    assert_response :success
  end

  test "should update premiation" do
    patch premiation_url(@premiation), params: { premiation: { badge_id: @premiation.badge_id, citizen_id: @premiation.citizen_id } }
    assert_redirected_to premiation_url(@premiation)
  end

  test "should destroy premiation" do
    assert_difference('Premiation.count', -1) do
      delete premiation_url(@premiation)
    end

    assert_redirected_to premiations_url
  end
end
