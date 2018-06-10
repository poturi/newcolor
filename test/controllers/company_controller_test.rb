require 'test_helper'

class CompanyControllerTest < ActionDispatch::IntegrationTest
  test "should get info" do
    get company_info_url
    assert_response :success
  end

end
