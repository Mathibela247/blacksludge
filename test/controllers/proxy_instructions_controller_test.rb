require "test_helper"

class ProxyInstructionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @proxy_instruction = proxy_instructions(:one)
  end

  test "should get index" do
    get proxy_instructions_url
    assert_response :success
  end

  test "should get new" do
    get new_proxy_instruction_url
    assert_response :success
  end

  test "should create proxy_instruction" do
    assert_difference("ProxyInstruction.count") do
      post proxy_instructions_url, params: { proxy_instruction: { name: @proxy_instruction.name } }
    end

    assert_redirected_to proxy_instruction_url(ProxyInstruction.last)
  end

  test "should show proxy_instruction" do
    get proxy_instruction_url(@proxy_instruction)
    assert_response :success
  end

  test "should get edit" do
    get edit_proxy_instruction_url(@proxy_instruction)
    assert_response :success
  end

  test "should update proxy_instruction" do
    patch proxy_instruction_url(@proxy_instruction), params: { proxy_instruction: { name: @proxy_instruction.name } }
    assert_redirected_to proxy_instruction_url(@proxy_instruction)
  end

  test "should destroy proxy_instruction" do
    assert_difference("ProxyInstruction.count", -1) do
      delete proxy_instruction_url(@proxy_instruction)
    end

    assert_redirected_to proxy_instructions_url
  end
end
