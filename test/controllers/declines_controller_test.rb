require "test_helper"

class DeclinesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get declines_index_url
    assert_response :success
  end
end
