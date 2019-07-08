require 'test_helper'

class DinnerPartiesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get dinner_parties_new_url
    assert_response :success
  end

  test "should get edit" do
    get dinner_parties_edit_url
    assert_response :success
  end

  test "should get index" do
    get dinner_parties_index_url
    assert_response :success
  end

  test "should get show" do
    get dinner_parties_show_url
    assert_response :success
  end

end
