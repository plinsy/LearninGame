require 'test_helper'

class DoingTestsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get doing_tests_new_url
    assert_response :success
  end

  test "should get create" do
    get doing_tests_create_url
    assert_response :success
  end

end
