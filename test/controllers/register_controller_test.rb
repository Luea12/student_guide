require 'test_helper'

class RegisterControllerTest < ActionDispatch::IntegrationTest
  test "should get signup" do
    get register_signup_url
    assert_response :success
  end

  test "should get verify" do
    get register_verify_url
    assert_response :success
  end

end
