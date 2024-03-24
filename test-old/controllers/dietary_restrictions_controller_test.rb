require "test_helper"

class DietaryRestrictionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dietary_restriction = dietary_restrictions(:one)
  end

  test "should get index" do
    get dietary_restrictions_url
    assert_response :success
  end

  test "should get new" do
    get new_dietary_restriction_url
    assert_response :success
  end

  test "should create dietary_restriction" do
    assert_difference("DietaryRestriction.count") do
      post dietary_restrictions_url, params: { dietary_restriction: { name: @dietary_restriction.name } }
    end

    assert_redirected_to dietary_restriction_url(DietaryRestriction.last)
  end

  test "should show dietary_restriction" do
    get dietary_restriction_url(@dietary_restriction)
    assert_response :success
  end

  test "should get edit" do
    get edit_dietary_restriction_url(@dietary_restriction)
    assert_response :success
  end

  test "should update dietary_restriction" do
    patch dietary_restriction_url(@dietary_restriction), params: { dietary_restriction: { name: @dietary_restriction.name } }
    assert_redirected_to dietary_restriction_url(@dietary_restriction)
  end

  test "should destroy dietary_restriction" do
    assert_difference("DietaryRestriction.count", -1) do
      delete dietary_restriction_url(@dietary_restriction)
    end

    assert_redirected_to dietary_restrictions_url
  end
end
