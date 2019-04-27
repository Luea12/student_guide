require 'test_helper'

class StudentTokensControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get student_tokens_index_url
    assert_response :success
  end

  test "should get new" do
    get student_tokens_new_url
    assert_response :success
  end

end
