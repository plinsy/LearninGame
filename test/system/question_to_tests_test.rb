require "application_system_test_case"

class QuestionToTestsTest < ApplicationSystemTestCase
  setup do
    @question_to_test = question_to_tests(:one)
  end

  test "visiting the index" do
    visit question_to_tests_url
    assert_selector "h1", text: "Question To Tests"
  end

  test "creating a Question to test" do
    visit question_to_tests_url
    click_on "New Question To Test"

    click_on "Create Question to test"

    assert_text "Question to test was successfully created"
    click_on "Back"
  end

  test "updating a Question to test" do
    visit question_to_tests_url
    click_on "Edit", match: :first

    click_on "Update Question to test"

    assert_text "Question to test was successfully updated"
    click_on "Back"
  end

  test "destroying a Question to test" do
    visit question_to_tests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Question to test was successfully destroyed"
  end
end
