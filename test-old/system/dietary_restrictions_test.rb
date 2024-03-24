require "application_system_test_case"

class DietaryRestrictionsTest < ApplicationSystemTestCase
  setup do
    @dietary_restriction = dietary_restrictions(:one)
  end

  test "visiting the index" do
    visit dietary_restrictions_url
    assert_selector "h1", text: "Dietary restrictions"
  end

  test "should create dietary restriction" do
    visit dietary_restrictions_url
    click_on "New dietary restriction"

    fill_in "Name", with: @dietary_restriction.name
    click_on "Create Dietary restriction"

    assert_text "Dietary restriction was successfully created"
    click_on "Back"
  end

  test "should update Dietary restriction" do
    visit dietary_restriction_url(@dietary_restriction)
    click_on "Edit this dietary restriction", match: :first

    fill_in "Name", with: @dietary_restriction.name
    click_on "Update Dietary restriction"

    assert_text "Dietary restriction was successfully updated"
    click_on "Back"
  end

  test "should destroy Dietary restriction" do
    visit dietary_restriction_url(@dietary_restriction)
    click_on "Destroy this dietary restriction", match: :first

    assert_text "Dietary restriction was successfully destroyed"
  end
end
