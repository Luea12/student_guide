require 'test_helper'

class SearchScheduleControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get search_schedule_index_url
    assert_response :success
  end

end
