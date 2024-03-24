require "test_helper"

class VotingOptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @voting_option = voting_options(:one)
  end

  test "should get index" do
    get voting_options_url
    assert_response :success
  end

  test "should get new" do
    get new_voting_option_url
    assert_response :success
  end

  test "should create voting_option" do
    assert_difference("VotingOption.count") do
      post voting_options_url, params: { voting_option: { name: @voting_option.name } }
    end

    assert_redirected_to voting_option_url(VotingOption.last)
  end

  test "should show voting_option" do
    get voting_option_url(@voting_option)
    assert_response :success
  end

  test "should get edit" do
    get edit_voting_option_url(@voting_option)
    assert_response :success
  end

  test "should update voting_option" do
    patch voting_option_url(@voting_option), params: { voting_option: { name: @voting_option.name } }
    assert_redirected_to voting_option_url(@voting_option)
  end

  test "should destroy voting_option" do
    assert_difference("VotingOption.count", -1) do
      delete voting_option_url(@voting_option)
    end

    assert_redirected_to voting_options_url
  end
end
