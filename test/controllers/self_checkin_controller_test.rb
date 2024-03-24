require "test_helper"

class SelfCheckinControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get self_checkin_index_url
    assert_response :success
  end
end
