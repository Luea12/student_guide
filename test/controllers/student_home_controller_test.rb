require 'test_helper'

class StudentHomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get student_home_index_url
    assert_response :success
  end

end
