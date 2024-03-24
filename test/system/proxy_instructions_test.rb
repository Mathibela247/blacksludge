require "application_system_test_case"

class ProxyInstructionsTest < ApplicationSystemTestCase
  setup do
    @proxy_instruction = proxy_instructions(:one)
  end

  test "visiting the index" do
    visit proxy_instructions_url
    assert_selector "h1", text: "Proxy instructions"
  end

  test "should create proxy instruction" do
    visit proxy_instructions_url
    click_on "New proxy instruction"

    fill_in "Name", with: @proxy_instruction.name
    click_on "Create Proxy instruction"

    assert_text "Proxy instruction was successfully created"
    click_on "Back"
  end

  test "should update Proxy instruction" do
    visit proxy_instruction_url(@proxy_instruction)
    click_on "Edit this proxy instruction", match: :first

    fill_in "Name", with: @proxy_instruction.name
    click_on "Update Proxy instruction"

    assert_text "Proxy instruction was successfully updated"
    click_on "Back"
  end

  test "should destroy Proxy instruction" do
    visit proxy_instruction_url(@proxy_instruction)
    click_on "Destroy this proxy instruction", match: :first

    assert_text "Proxy instruction was successfully destroyed"
  end
end
