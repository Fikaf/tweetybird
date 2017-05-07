require 'test_helper'

class SearchControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get search_main_url
    assert_response :success
  end

end
