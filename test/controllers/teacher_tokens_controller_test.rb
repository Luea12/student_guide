require 'test_helper'

class TeacherTokensControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get teacher_tokens_index_url
    assert_response :success
  end

  test "should get new" do
    get teacher_tokens_new_url
    assert_response :success
  end

end
