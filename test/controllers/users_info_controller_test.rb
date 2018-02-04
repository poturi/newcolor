require 'test_helper'

class UsersInfoControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get users_info_new_url
    assert_response :success
  end

end
