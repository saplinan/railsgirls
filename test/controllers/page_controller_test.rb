require 'test_helper'

class PageControllerTest < ActionDispatch::IntegrationTest
  test "should get info" do
    get page_info_url
    assert_response :success
  end

end
