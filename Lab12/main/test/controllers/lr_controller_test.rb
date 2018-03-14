require_relative '../test_helper'

class LrControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lab12_index_url
    assert_response :success
  end

  test "should get view" do
    get lab12_view_url
    assert_response :success
  end

end
