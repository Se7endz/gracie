require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get static_lp" do
    get pages_static_lp_url
    assert_response :success
  end

  test "should get landing_page" do
    get pages_landing_page_url
    assert_response :success
  end

end
