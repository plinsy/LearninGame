require 'test_helper'

class DoingExamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @doing_exam = doing_exams(:one)
  end

  test "should get index" do
    get doing_exams_url
    assert_response :success
  end

  test "should get new" do
    get new_doing_exam_url
    assert_response :success
  end

  test "should create doing_exam" do
    assert_difference('DoingExam.count') do
      post doing_exams_url, params: { doing_exam: {  } }
    end

    assert_redirected_to doing_exam_url(DoingExam.last)
  end

  test "should show doing_exam" do
    get doing_exam_url(@doing_exam)
    assert_response :success
  end

  test "should get edit" do
    get edit_doing_exam_url(@doing_exam)
    assert_response :success
  end

  test "should update doing_exam" do
    patch doing_exam_url(@doing_exam), params: { doing_exam: {  } }
    assert_redirected_to doing_exam_url(@doing_exam)
  end

  test "should destroy doing_exam" do
    assert_difference('DoingExam.count', -1) do
      delete doing_exam_url(@doing_exam)
    end

    assert_redirected_to doing_exams_url
  end
end
