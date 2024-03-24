require "application_system_test_case"

class InvitationRsvpsTest < ApplicationSystemTestCase
  setup do
    @invitation_rsvp = invitation_rsvps(:one)
  end

  test "visiting the index" do
    visit invitation_rsvps_url
    assert_selector "h1", text: "Invitation rsvps"
  end

  test "should create invitation rsvp" do
    visit invitation_rsvps_url
    click_on "New invitation rsvp"

    fill_in "Customer", with: @invitation_rsvp.customer_id
    fill_in "Dietary restriction", with: @invitation_rsvp.dietary_restriction_id
    fill_in "Invitation response", with: @invitation_rsvp.invitation_response_id
    fill_in "User", with: @invitation_rsvp.user_id
    click_on "Create Invitation rsvp"

    assert_text "Invitation rsvp was successfully created"
    click_on "Back"
  end

  test "should update Invitation rsvp" do
    visit invitation_rsvp_url(@invitation_rsvp)
    click_on "Edit this invitation rsvp", match: :first

    fill_in "Customer", with: @invitation_rsvp.customer_id
    fill_in "Dietary restriction", with: @invitation_rsvp.dietary_restriction_id
    fill_in "Invitation response", with: @invitation_rsvp.invitation_response_id
    fill_in "User", with: @invitation_rsvp.user_id
    click_on "Update Invitation rsvp"

    assert_text "Invitation rsvp was successfully updated"
    click_on "Back"
  end

  test "should destroy Invitation rsvp" do
    visit invitation_rsvp_url(@invitation_rsvp)
    click_on "Destroy this invitation rsvp", match: :first

    assert_text "Invitation rsvp was successfully destroyed"
  end
end
