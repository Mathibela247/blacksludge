require "application_system_test_case"

class SettingAttendeesTest < ApplicationSystemTestCase
  setup do
    @setting_attendee = setting_attendees(:one)
  end

  test "visiting the index" do
    visit setting_attendees_url
    assert_selector "h1", text: "Setting attendees"
  end

  test "should create setting attendee" do
    visit setting_attendees_url
    click_on "New setting attendee"

    fill_in "Attendee", with: @setting_attendee.attendee_id
    fill_in "Bgcolor", with: @setting_attendee.bgcolor
    fill_in "Bgimage", with: @setting_attendee.bgimage
    fill_in "Fontsize", with: @setting_attendee.fontsize
    fill_in "H1size", with: @setting_attendee.h1size
    fill_in "Logo", with: @setting_attendee.logo
    click_on "Create Setting attendee"

    assert_text "Setting attendee was successfully created"
    click_on "Back"
  end

  test "should update Setting attendee" do
    visit setting_attendee_url(@setting_attendee)
    click_on "Edit this setting attendee", match: :first

    fill_in "Attendee", with: @setting_attendee.attendee_id
    fill_in "Bgcolor", with: @setting_attendee.bgcolor
    fill_in "Bgimage", with: @setting_attendee.bgimage
    fill_in "Fontsize", with: @setting_attendee.fontsize
    fill_in "H1size", with: @setting_attendee.h1size
    fill_in "Logo", with: @setting_attendee.logo
    click_on "Update Setting attendee"

    assert_text "Setting attendee was successfully updated"
    click_on "Back"
  end

  test "should destroy Setting attendee" do
    visit setting_attendee_url(@setting_attendee)
    click_on "Destroy this setting attendee", match: :first

    assert_text "Setting attendee was successfully destroyed"
  end
end
