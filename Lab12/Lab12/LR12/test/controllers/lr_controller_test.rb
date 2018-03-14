require 'test_helper'

class LrControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lr_index_url
    assert_response :success
  end

  test "should get view" do
    get lr_view_url
    assert_response :success
  end

end
