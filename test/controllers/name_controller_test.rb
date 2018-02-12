require 'test_helper'

class NameControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get name_index_url
    assert_response :success
  end

  test "should get search" do
    get name_search_url
    assert_response :success
  end

end
