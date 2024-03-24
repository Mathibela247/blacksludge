require "application_system_test_case"

class ProxyTypesTest < ApplicationSystemTestCase
  setup do
    @proxy_type = proxy_types(:one)
  end

  test "visiting the index" do
    visit proxy_types_url
    assert_selector "h1", text: "Proxy types"
  end

  test "should create proxy type" do
    visit proxy_types_url
    click_on "New proxy type"

    fill_in "Name", with: @proxy_type.name
    click_on "Create Proxy type"

    assert_text "Proxy type was successfully created"
    click_on "Back"
  end

  test "should update Proxy type" do
    visit proxy_type_url(@proxy_type)
    click_on "Edit this proxy type", match: :first

    fill_in "Name", with: @proxy_type.name
    click_on "Update Proxy type"

    assert_text "Proxy type was successfully updated"
    click_on "Back"
  end

  test "should destroy Proxy type" do
    visit proxy_type_url(@proxy_type)
    click_on "Destroy this proxy type", match: :first

    assert_text "Proxy type was successfully destroyed"
  end
end
