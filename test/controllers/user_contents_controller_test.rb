require 'test_helper'

class UserContentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_content = user_contents(:one)
  end

  test "should get index" do
    get user_contents_url, as: :json
    assert_response :success
  end

  test "should create user_content" do
    assert_difference('UserContent.count') do
      post user_contents_url, params: { user_content: { content_id: @user_content.content_id, contentlist_id: @user_content.contentlist_id, return: @user_content.return, return_at: @user_content.return_at, returned: @user_content.returned, state_id: @user_content.state_id, user_id: @user_content.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show user_content" do
    get user_content_url(@user_content), as: :json
    assert_response :success
  end

  test "should update user_content" do
    patch user_content_url(@user_content), params: { user_content: { content_id: @user_content.content_id, contentlist_id: @user_content.contentlist_id, return: @user_content.return, return_at: @user_content.return_at, returned: @user_content.returned, state_id: @user_content.state_id, user_id: @user_content.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy user_content" do
    assert_difference('UserContent.count', -1) do
      delete user_content_url(@user_content), as: :json
    end

    assert_response 204
  end
end
