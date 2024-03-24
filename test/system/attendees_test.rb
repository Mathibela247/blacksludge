require "application_system_test_case"

class AttendeesTest < ApplicationSystemTestCase
  setup do
    @attendee = attendees(:one)
  end

  test "visiting the index" do
    visit attendees_url
    assert_selector "h1", text: "Attendees"
  end

  test "should create attendee" do
    visit attendees_url
    click_on "New attendee"

    fill_in "Company", with: @attendee.company
    fill_in "Email", with: @attendee.email
    fill_in "First name", with: @attendee.first_name
    fill_in "Last name", with: @attendee.last_name
    fill_in "Mobile number", with: @attendee.mobile_number
    click_on "Create Attendee"

    assert_text "Attendee was successfully created"
    click_on "Back"
  end

  test "should update Attendee" do
    visit attendee_url(@attendee)
    click_on "Edit this attendee", match: :first

    fill_in "Company", with: @attendee.company
    fill_in "Email", with: @attendee.email
    fill_in "First name", with: @attendee.first_name
    fill_in "Last name", with: @attendee.last_name
    fill_in "Mobile number", with: @attendee.mobile_number
    click_on "Update Attendee"

    assert_text "Attendee was successfully updated"
    click_on "Back"
  end

  test "should destroy Attendee" do
    visit attendee_url(@attendee)
    click_on "Destroy this attendee", match: :first

    assert_text "Attendee was successfully destroyed"
  end
end
