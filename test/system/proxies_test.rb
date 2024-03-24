require "application_system_test_case"

class ProxiesTest < ApplicationSystemTestCase
  setup do
    @proxy = proxies(:one)
  end

  test "visiting the index" do
    visit proxies_url
    assert_selector "h1", text: "Proxies"
  end

  test "should create proxy" do
    visit proxies_url
    click_on "New proxy"

    fill_in "Firstname", with: @proxy.firstname
    fill_in "Lastname", with: @proxy.lastname
    fill_in "Member number", with: @proxy.member_number
    fill_in "Proxy firstname", with: @proxy.proxy_firstname
    fill_in "Proxy instruction", with: @proxy.proxy_instruction_id
    fill_in "Proxy lastname", with: @proxy.proxy_lastname
    fill_in "Proxy member number", with: @proxy.proxy_member_number
    fill_in "Proxy type", with: @proxy.proxy_type_id
    click_on "Create Proxy"

    assert_text "Proxy was successfully created"
    click_on "Back"
  end

  test "should update Proxy" do
    visit proxy_url(@proxy)
    click_on "Edit this proxy", match: :first

    fill_in "Firstname", with: @proxy.firstname
    fill_in "Lastname", with: @proxy.lastname
    fill_in "Member number", with: @proxy.member_number
    fill_in "Proxy firstname", with: @proxy.proxy_firstname
    fill_in "Proxy instruction", with: @proxy.proxy_instruction_id
    fill_in "Proxy lastname", with: @proxy.proxy_lastname
    fill_in "Proxy member number", with: @proxy.proxy_member_number
    fill_in "Proxy type", with: @proxy.proxy_type_id
    click_on "Update Proxy"

    assert_text "Proxy was successfully updated"
    click_on "Back"
  end

  test "should destroy Proxy" do
    visit proxy_url(@proxy)
    click_on "Destroy this proxy", match: :first

    assert_text "Proxy was successfully destroyed"
  end
end
