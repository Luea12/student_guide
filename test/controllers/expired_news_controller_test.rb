require 'test_helper'

class ExpiredNewsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get expired_news_index_url
    assert_response :success
  end

end
