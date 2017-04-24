require 'test_helper'

class MusiciansControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get musicians_index_url
    assert_response :success
  end

  test "should get show" do
    get musicians_show_url
    assert_response :success
  end

  test "should get new" do
    get musicians_new_url
    assert_response :success
  end

end
