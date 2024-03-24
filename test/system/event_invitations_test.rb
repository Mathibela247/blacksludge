require "application_system_test_case"

class EventInvitationsTest < ApplicationSystemTestCase
  setup do
    @event_invitation = event_invitations(:one)
  end

  test "visiting the index" do
    visit event_invitations_url
    assert_selector "h1", text: "Event invitations"
  end

  test "should create event invitation" do
    visit event_invitations_url
    click_on "New event invitation"

    fill_in "Event", with: @event_invitation.event_id
    fill_in "Invitation response", with: @event_invitation.invitation_response_id
    fill_in "Response date", with: @event_invitation.response_date
    fill_in "Sent date", with: @event_invitation.sent_date
    fill_in "Text response", with: @event_invitation.text_response
    fill_in "User", with: @event_invitation.user_id
    click_on "Create Event invitation"

    assert_text "Event invitation was successfully created"
    click_on "Back"
  end

  test "should update Event invitation" do
    visit event_invitation_url(@event_invitation)
    click_on "Edit this event invitation", match: :first

    fill_in "Event", with: @event_invitation.event_id
    fill_in "Invitation response", with: @event_invitation.invitation_response_id
    fill_in "Response date", with: @event_invitation.response_date
    fill_in "Sent date", with: @event_invitation.sent_date
    fill_in "Text response", with: @event_invitation.text_response
    fill_in "User", with: @event_invitation.user_id
    click_on "Update Event invitation"

    assert_text "Event invitation was successfully updated"
    click_on "Back"
  end

  test "should destroy Event invitation" do
    visit event_invitation_url(@event_invitation)
    click_on "Destroy this event invitation", match: :first

    assert_text "Event invitation was successfully destroyed"
  end
end
