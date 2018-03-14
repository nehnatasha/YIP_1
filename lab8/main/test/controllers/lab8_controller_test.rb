require_relative '../test_helper'
#require File.expand_path("../../test_helper", __FILE__)
#require (File.dirname(File.realdirpath(__FILE__)) + '/../test_helper.rb')

class Lab8ControllerTest < ActionDispatch::IntegrationTest
  test 'should get input' do
    get lab8_input_url
    assert_response :success
  end
  
  test 'should get [1,4,9] for view with 1 4 9 5 6 10' do
	get lab8_input_url, params: {a1: '1+4+9+5+6+10'}
	assert_equal assigns[:result], [1, 4, 9]
  end
end
