require 'test_helper'

class UserChecksControllerTest < ActionDispatch::IntegrationTest
  test "should get check" do
    get user_checks_check_url
    assert_response :success
  end

end
