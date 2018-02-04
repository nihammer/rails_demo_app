require 'test_helper'

class WebsiteControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get website_index_url
    assert_response :success
  end

  test "should get show" do
    get website_show_url
    assert_response :success
  end

end
