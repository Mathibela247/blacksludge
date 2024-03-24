require "test_helper"

class InvitationResponsesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invitation_response = invitation_responses(:one)
  end

  test "should get index" do
    get invitation_responses_url
    assert_response :success
  end

  test "should get new" do
    get new_invitation_response_url
    assert_response :success
  end

  test "should create invitation_response" do
    assert_difference("InvitationResponse.count") do
      post invitation_responses_url, params: { invitation_response: { name: @invitation_response.name } }
    end

    assert_redirected_to invitation_response_url(InvitationResponse.last)
  end

  test "should show invitation_response" do
    get invitation_response_url(@invitation_response)
    assert_response :success
  end

  test "should get edit" do
    get edit_invitation_response_url(@invitation_response)
    assert_response :success
  end

  test "should update invitation_response" do
    patch invitation_response_url(@invitation_response), params: { invitation_response: { name: @invitation_response.name } }
    assert_redirected_to invitation_response_url(@invitation_response)
  end

  test "should destroy invitation_response" do
    assert_difference("InvitationResponse.count", -1) do
      delete invitation_response_url(@invitation_response)
    end

    assert_redirected_to invitation_responses_url
  end
end
