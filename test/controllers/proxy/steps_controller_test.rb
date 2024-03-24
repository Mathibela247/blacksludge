require "test_helper"

class Proxy::StepsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get proxy_steps_show_url
    assert_response :success
  end

  test "should get update" do
    get proxy_steps_update_url
    assert_response :success
  end
end
