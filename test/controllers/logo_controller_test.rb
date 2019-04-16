require 'test_helper'

class LogoControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get logo_create_url
    assert_response :success
  end

  test "should get destroy" do
    get logo_destroy_url
    assert_response :success
  end

end
