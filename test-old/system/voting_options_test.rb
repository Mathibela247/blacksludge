require "application_system_test_case"

class VotingOptionsTest < ApplicationSystemTestCase
  setup do
    @voting_option = voting_options(:one)
  end

  test "visiting the index" do
    visit voting_options_url
    assert_selector "h1", text: "Voting options"
  end

  test "should create voting option" do
    visit voting_options_url
    click_on "New voting option"

    fill_in "Name", with: @voting_option.name
    click_on "Create Voting option"

    assert_text "Voting option was successfully created"
    click_on "Back"
  end

  test "should update Voting option" do
    visit voting_option_url(@voting_option)
    click_on "Edit this voting option", match: :first

    fill_in "Name", with: @voting_option.name
    click_on "Update Voting option"

    assert_text "Voting option was successfully updated"
    click_on "Back"
  end

  test "should destroy Voting option" do
    visit voting_option_url(@voting_option)
    click_on "Destroy this voting option", match: :first

    assert_text "Voting option was successfully destroyed"
  end
end
