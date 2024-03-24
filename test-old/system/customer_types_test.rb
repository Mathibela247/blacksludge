require "application_system_test_case"

class CustomerTypesTest < ApplicationSystemTestCase
  setup do
    @customer_type = customer_types(:one)
  end

  test "visiting the index" do
    visit customer_types_url
    assert_selector "h1", text: "Customer types"
  end

  test "should create customer type" do
    visit customer_types_url
    click_on "New customer type"

    fill_in "Description", with: @customer_type.description
    fill_in "Name", with: @customer_type.name
    click_on "Create Customer type"

    assert_text "Customer type was successfully created"
    click_on "Back"
  end

  test "should update Customer type" do
    visit customer_type_url(@customer_type)
    click_on "Edit this customer type", match: :first

    fill_in "Description", with: @customer_type.description
    fill_in "Name", with: @customer_type.name
    click_on "Update Customer type"

    assert_text "Customer type was successfully updated"
    click_on "Back"
  end

  test "should destroy Customer type" do
    visit customer_type_url(@customer_type)
    click_on "Destroy this customer type", match: :first

    assert_text "Customer type was successfully destroyed"
  end
end
