require 'test_helper'

class SearchControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @main_user = users(:tweet_user)
  end

  test "cant get to the root page when not logged in" do
    get root_url
    assert_response :redirect
  end

  test "cant get to the main page when not logged in" do
    get main_url
    assert_response :redirect
  end

  test "can succesfully get the main page when logged in" do
    sign_in(@main_user)
    get main_url
    assert_equal true, assigns(:search_active)
    assert_response :success
  end

  test "creates a new history entry when conducting a search" do
    sign_in(@main_user)
    old_count = @main_user.history.all.count
    post(main_url, params: { keyword: 'search me' })
    new_count = @main_user.history.all.count
    assert_equal old_count + 1, new_count
  end

  test "get the history of a user" do
    sign_in(@main_user)
    get history_url
    assert_equal @main_user.history, assigns(:history)
    assert_response :success
  end
end
