require 'test_helper'

class PresentationControllerTest < ActionDispatch::IntegrationTest
  test "should get team" do
    get presentation_team_url
    assert_response :success
  end

end
