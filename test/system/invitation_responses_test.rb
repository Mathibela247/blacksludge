require "application_system_test_case"

class InvitationResponsesTest < ApplicationSystemTestCase
  setup do
    @invitation_response = invitation_responses(:one)
  end

  test "visiting the index" do
    visit invitation_responses_url
    assert_selector "h1", text: "Invitation responses"
  end

  test "should create invitation response" do
    visit invitation_responses_url
    click_on "New invitation response"

    fill_in "Name", with: @invitation_response.name
    click_on "Create Invitation response"

    assert_text "Invitation response was successfully created"
    click_on "Back"
  end

  test "should update Invitation response" do
    visit invitation_response_url(@invitation_response)
    click_on "Edit this invitation response", match: :first

    fill_in "Name", with: @invitation_response.name
    click_on "Update Invitation response"

    assert_text "Invitation response was successfully updated"
    click_on "Back"
  end

  test "should destroy Invitation response" do
    visit invitation_response_url(@invitation_response)
    click_on "Destroy this invitation response", match: :first

    assert_text "Invitation response was successfully destroyed"
  end
end
