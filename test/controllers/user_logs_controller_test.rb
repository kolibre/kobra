require 'test_helper'

class UserLogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_log = user_logs(:one)
  end

  test "should get index" do
    get user_logs_url, as: :json
    assert_response :success
  end

  test "should create user_log" do
    assert_difference('UserLog.count') do
      post user_logs_url, params: { user_log: { ip: @user_log.ip, request: @user_log.request, response: @user_log.response, user_id: @user_log.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show user_log" do
    get user_log_url(@user_log), as: :json
    assert_response :success
  end

  test "should update user_log" do
    patch user_log_url(@user_log), params: { user_log: { ip: @user_log.ip, request: @user_log.request, response: @user_log.response, user_id: @user_log.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy user_log" do
    assert_difference('UserLog.count', -1) do
      delete user_log_url(@user_log), as: :json
    end

    assert_response 204
  end
end
