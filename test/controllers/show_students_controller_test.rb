require 'test_helper'

class ShowStudentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get show_students_index_url
    assert_response :success
  end

end
