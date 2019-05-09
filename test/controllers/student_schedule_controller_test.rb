require 'test_helper'

class StudentScheduleControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get student_schedule_index_url
    assert_response :success
  end

end
