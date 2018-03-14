require_relative '../test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get newuser" do
    get users_newuser_url
    assert_response :success
  end

end
