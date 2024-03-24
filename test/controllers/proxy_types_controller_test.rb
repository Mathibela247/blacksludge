require "test_helper"

class ProxyTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @proxy_type = proxy_types(:one)
  end

  test "should get index" do
    get proxy_types_url
    assert_response :success
  end

  test "should get new" do
    get new_proxy_type_url
    assert_response :success
  end

  test "should create proxy_type" do
    assert_difference("ProxyType.count") do
      post proxy_types_url, params: { proxy_type: { name: @proxy_type.name } }
    end

    assert_redirected_to proxy_type_url(ProxyType.last)
  end

  test "should show proxy_type" do
    get proxy_type_url(@proxy_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_proxy_type_url(@proxy_type)
    assert_response :success
  end

  test "should update proxy_type" do
    patch proxy_type_url(@proxy_type), params: { proxy_type: { name: @proxy_type.name } }
    assert_redirected_to proxy_type_url(@proxy_type)
  end

  test "should destroy proxy_type" do
    assert_difference("ProxyType.count", -1) do
      delete proxy_type_url(@proxy_type)
    end

    assert_redirected_to proxy_types_url
  end
end
