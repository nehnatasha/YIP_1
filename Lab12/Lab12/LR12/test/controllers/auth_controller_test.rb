require 'test_helper'

class AuthControllerTest < ActionDispatch::IntegrationTest
  test "should get authorization" do
    get auth_authorization_url
    assert_response :success
  end

end
