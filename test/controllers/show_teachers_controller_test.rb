require 'test_helper'

class ShowTeachersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get show_teachers_index_url
    assert_response :success
  end

end
