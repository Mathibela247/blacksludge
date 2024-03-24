require "application_system_test_case"

class SharesTest < ApplicationSystemTestCase
  setup do
    @share = shares(:one)
  end

  test "visiting the index" do
    visit shares_url
    assert_selector "h1", text: "Shares"
  end

  test "should create share" do
    visit shares_url
    click_on "New share"

    fill_in "Account number", with: @share.account_number
    fill_in "Custom", with: @share.custom
    fill_in "Email", with: @share.email
    fill_in "Id number", with: @share.id_number
    fill_in "Name", with: @share.name
    fill_in "Notes", with: @share.notes
    fill_in "Physical address", with: @share.physical_address
    fill_in "Share volume", with: @share.share_volume
    fill_in "Surname", with: @share.surname
    fill_in "Title", with: @share.title
    fill_in "Type of shares", with: @share.type_of_shares_id
    click_on "Create Share"

    assert_text "Share was successfully created"
    click_on "Back"
  end

  test "should update Share" do
    visit share_url(@share)
    click_on "Edit this share", match: :first

    fill_in "Account number", with: @share.account_number
    fill_in "Custom", with: @share.custom
    fill_in "Email", with: @share.email
    fill_in "Id number", with: @share.id_number
    fill_in "Name", with: @share.name
    fill_in "Notes", with: @share.notes
    fill_in "Physical address", with: @share.physical_address
    fill_in "Share volume", with: @share.share_volume
    fill_in "Surname", with: @share.surname
    fill_in "Title", with: @share.title
    fill_in "Type of shares", with: @share.type_of_shares_id
    click_on "Update Share"

    assert_text "Share was successfully updated"
    click_on "Back"
  end

  test "should destroy Share" do
    visit share_url(@share)
    click_on "Destroy this share", match: :first

    assert_text "Share was successfully destroyed"
  end
end
