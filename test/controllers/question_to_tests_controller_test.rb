require 'test_helper'

class QuestionToTestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @question_to_test = question_to_tests(:one)
  end

  test "should get index" do
    get question_to_tests_url
    assert_response :success
  end

  test "should get new" do
    get new_question_to_test_url
    assert_response :success
  end

  test "should create question_to_test" do
    assert_difference('QuestionToTest.count') do
      post question_to_tests_url, params: { question_to_test: {  } }
    end

    assert_redirected_to question_to_test_url(QuestionToTest.last)
  end

  test "should show question_to_test" do
    get question_to_test_url(@question_to_test)
    assert_response :success
  end

  test "should get edit" do
    get edit_question_to_test_url(@question_to_test)
    assert_response :success
  end

  test "should update question_to_test" do
    patch question_to_test_url(@question_to_test), params: { question_to_test: {  } }
    assert_redirected_to question_to_test_url(@question_to_test)
  end

  test "should destroy question_to_test" do
    assert_difference('QuestionToTest.count', -1) do
      delete question_to_test_url(@question_to_test)
    end

    assert_redirected_to question_to_tests_url
  end
end
