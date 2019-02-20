require 'test_helper'

class StatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @state = states(:one)
  end

  test "should get index" do
    get states_url, as: :json
    assert_response :success
  end

  test "should create state" do
    assert_difference('State.count') do
      post states_url, params: { state: { state: @state.state } }, as: :json
    end

    assert_response 201
  end

  test "should show state" do
    get state_url(@state), as: :json
    assert_response :success
  end

  test "should update state" do
    patch state_url(@state), params: { state: { state: @state.state } }, as: :json
    assert_response 200
  end

  test "should destroy state" do
    assert_difference('State.count', -1) do
      delete state_url(@state), as: :json
    end

    assert_response 204
  end
end
