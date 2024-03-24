require "test_helper"

class InvitationRsvpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invitation_rsvp = invitation_rsvps(:one)
  end

  test "should get index" do
    get invitation_rsvps_url
    assert_response :success
  end

  test "should get new" do
    get new_invitation_rsvp_url
    assert_response :success
  end

  test "should create invitation_rsvp" do
    assert_difference("InvitationRsvp.count") do
      post invitation_rsvps_url, params: { invitation_rsvp: { customer_id: @invitation_rsvp.customer_id, dietary_restriction_id: @invitation_rsvp.dietary_restriction_id, invitation_response_id: @invitation_rsvp.invitation_response_id, user_id: @invitation_rsvp.user_id } }
    end

    assert_redirected_to invitation_rsvp_url(InvitationRsvp.last)
  end

  test "should show invitation_rsvp" do
    get invitation_rsvp_url(@invitation_rsvp)
    assert_response :success
  end

  test "should get edit" do
    get edit_invitation_rsvp_url(@invitation_rsvp)
    assert_response :success
  end

  test "should update invitation_rsvp" do
    patch invitation_rsvp_url(@invitation_rsvp), params: { invitation_rsvp: { customer_id: @invitation_rsvp.customer_id, dietary_restriction_id: @invitation_rsvp.dietary_restriction_id, invitation_response_id: @invitation_rsvp.invitation_response_id, user_id: @invitation_rsvp.user_id } }
    assert_redirected_to invitation_rsvp_url(@invitation_rsvp)
  end

  test "should destroy invitation_rsvp" do
    assert_difference("InvitationRsvp.count", -1) do
      delete invitation_rsvp_url(@invitation_rsvp)
    end

    assert_redirected_to invitation_rsvps_url
  end
end
