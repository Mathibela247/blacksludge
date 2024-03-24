require "test_helper"

class TypeOfSharesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_of_share = type_of_shares(:one)
  end

  test "should get index" do
    get type_of_shares_url
    assert_response :success
  end

  test "should get new" do
    get new_type_of_share_url
    assert_response :success
  end

  test "should create type_of_share" do
    assert_difference("TypeOfShare.count") do
      post type_of_shares_url, params: { type_of_share: { name: @type_of_share.name } }
    end

    assert_redirected_to type_of_share_url(TypeOfShare.last)
  end

  test "should show type_of_share" do
    get type_of_share_url(@type_of_share)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_of_share_url(@type_of_share)
    assert_response :success
  end

  test "should update type_of_share" do
    patch type_of_share_url(@type_of_share), params: { type_of_share: { name: @type_of_share.name } }
    assert_redirected_to type_of_share_url(@type_of_share)
  end

  test "should destroy type_of_share" do
    assert_difference("TypeOfShare.count", -1) do
      delete type_of_share_url(@type_of_share)
    end

    assert_redirected_to type_of_shares_url
  end
end
