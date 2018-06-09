require 'test_helper'

class AanvraagControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get aanvraag_new_url
    assert_response :success
  end

end
