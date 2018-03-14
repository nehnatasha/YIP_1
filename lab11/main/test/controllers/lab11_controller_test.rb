require_relative '../test_helper'

class Lab11ControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get lab11_input_url
    assert_response :success
  end

  test "results should be different" do
	post lab11_output_url params: { a1: '14 3 8 9 9 36 25 3 16 25' };
	result1 = response.parsed_body
	
	post lab11_output_url params: { a1: '25 16 14 3 8 9 36 25 3 16 25' };
	result2 = response.parsed_body
	
	assert_not_equal result2, result1
  end
end
