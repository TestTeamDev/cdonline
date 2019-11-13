require 'test_helper'

class EndusersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get endusers_index_url
    assert_response :success
  end

  test "should get show" do
    get endusers_show_url
    assert_response :success
  end

  test "should get edit" do
    get endusers_edit_url
    assert_response :success
  end

  test "should get leave" do
    get endusers_leave_url
    assert_response :success
  end

end
