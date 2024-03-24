require "application_system_test_case"

class TypeOfSharesTest < ApplicationSystemTestCase
  setup do
    @type_of_share = type_of_shares(:one)
  end

  test "visiting the index" do
    visit type_of_shares_url
    assert_selector "h1", text: "Type of shares"
  end

  test "should create type of share" do
    visit type_of_shares_url
    click_on "New type of share"

    fill_in "Name", with: @type_of_share.name
    click_on "Create Type of share"

    assert_text "Type of share was successfully created"
    click_on "Back"
  end

  test "should update Type of share" do
    visit type_of_share_url(@type_of_share)
    click_on "Edit this type of share", match: :first

    fill_in "Name", with: @type_of_share.name
    click_on "Update Type of share"

    assert_text "Type of share was successfully updated"
    click_on "Back"
  end

  test "should destroy Type of share" do
    visit type_of_share_url(@type_of_share)
    click_on "Destroy this type of share", match: :first

    assert_text "Type of share was successfully destroyed"
  end
end
