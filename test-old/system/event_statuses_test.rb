require "application_system_test_case"

class EventStatusesTest < ApplicationSystemTestCase
  setup do
    @event_status = event_statuses(:one)
  end

  test "visiting the index" do
    visit event_statuses_url
    assert_selector "h1", text: "Event statuses"
  end

  test "should create event status" do
    visit event_statuses_url
    click_on "New event status"

    fill_in "Name", with: @event_status.name
    click_on "Create Event status"

    assert_text "Event status was successfully created"
    click_on "Back"
  end

  test "should update Event status" do
    visit event_status_url(@event_status)
    click_on "Edit this event status", match: :first

    fill_in "Name", with: @event_status.name
    click_on "Update Event status"

    assert_text "Event status was successfully updated"
    click_on "Back"
  end

  test "should destroy Event status" do
    visit event_status_url(@event_status)
    click_on "Destroy this event status", match: :first

    assert_text "Event status was successfully destroyed"
  end
end
