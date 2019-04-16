require "application_system_test_case"

class DoingExamsTest < ApplicationSystemTestCase
  setup do
    @doing_exam = doing_exams(:one)
  end

  test "visiting the index" do
    visit doing_exams_url
    assert_selector "h1", text: "Doing Exams"
  end

  test "creating a Doing exam" do
    visit doing_exams_url
    click_on "New Doing Exam"

    click_on "Create Doing exam"

    assert_text "Doing exam was successfully created"
    click_on "Back"
  end

  test "updating a Doing exam" do
    visit doing_exams_url
    click_on "Edit", match: :first

    click_on "Update Doing exam"

    assert_text "Doing exam was successfully updated"
    click_on "Back"
  end

  test "destroying a Doing exam" do
    visit doing_exams_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Doing exam was successfully destroyed"
  end
end
