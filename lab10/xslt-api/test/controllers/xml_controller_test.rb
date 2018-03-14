require_relative '../test_helper'

class XmlControllerTest < ActionDispatch
  test 'check rss format' do
    get '/', params: { a1:'1 25 16 3 8 5', format: :rss }
    assert_response :success
    assert_includes @response.headers['Content-Type'], 'application/rss'
  end
end
