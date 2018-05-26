require 'test_helper'

class EcopointsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ecopoint = ecopoints(:one)
  end

  test "should get index" do
    get ecopoints_url
    assert_response :success
  end

  test "should get new" do
    get new_ecopoint_url
    assert_response :success
  end

  test "should create ecopoint" do
    assert_difference('Ecopoint.count') do
      post ecopoints_url, params: { ecopoint: { user_id: @ecopoint.user_id } }
    end

    assert_redirected_to ecopoint_url(Ecopoint.last)
  end

  test "should show ecopoint" do
    get ecopoint_url(@ecopoint)
    assert_response :success
  end

  test "should get edit" do
    get edit_ecopoint_url(@ecopoint)
    assert_response :success
  end

  test "should update ecopoint" do
    patch ecopoint_url(@ecopoint), params: { ecopoint: { user_id: @ecopoint.user_id } }
    assert_redirected_to ecopoint_url(@ecopoint)
  end

  test "should destroy ecopoint" do
    assert_difference('Ecopoint.count', -1) do
      delete ecopoint_url(@ecopoint)
    end

    assert_redirected_to ecopoints_url
  end
end
