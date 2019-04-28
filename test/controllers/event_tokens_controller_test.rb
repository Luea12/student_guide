require 'test_helper'

class EventTokensControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get event_tokens_index_url
    assert_response :success
  end

  test "should get new" do
    get event_tokens_new_url
    assert_response :success
  end

end
