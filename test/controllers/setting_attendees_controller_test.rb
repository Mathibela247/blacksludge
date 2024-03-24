require "test_helper"

class SettingAttendeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @setting_attendee = setting_attendees(:one)
  end

  test "should get index" do
    get setting_attendees_url
    assert_response :success
  end

  test "should get new" do
    get new_setting_attendee_url
    assert_response :success
  end

  test "should create setting_attendee" do
    assert_difference("SettingAttendee.count") do
      post setting_attendees_url, params: { setting_attendee: { attendee_id: @setting_attendee.attendee_id, bgcolor: @setting_attendee.bgcolor, bgimage: @setting_attendee.bgimage, fontsize: @setting_attendee.fontsize, h1size: @setting_attendee.h1size, logo: @setting_attendee.logo } }
    end

    assert_redirected_to setting_attendee_url(SettingAttendee.last)
  end

  test "should show setting_attendee" do
    get setting_attendee_url(@setting_attendee)
    assert_response :success
  end

  test "should get edit" do
    get edit_setting_attendee_url(@setting_attendee)
    assert_response :success
  end

  test "should update setting_attendee" do
    patch setting_attendee_url(@setting_attendee), params: { setting_attendee: { attendee_id: @setting_attendee.attendee_id, bgcolor: @setting_attendee.bgcolor, bgimage: @setting_attendee.bgimage, fontsize: @setting_attendee.fontsize, h1size: @setting_attendee.h1size, logo: @setting_attendee.logo } }
    assert_redirected_to setting_attendee_url(@setting_attendee)
  end

  test "should destroy setting_attendee" do
    assert_difference("SettingAttendee.count", -1) do
      delete setting_attendee_url(@setting_attendee)
    end

    assert_redirected_to setting_attendees_url
  end
end
