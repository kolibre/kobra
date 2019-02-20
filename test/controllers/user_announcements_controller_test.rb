require 'test_helper'

class UserAnnouncementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_announcement = user_announcements(:one)
  end

  test "should get index" do
    get user_announcements_url, as: :json
    assert_response :success
  end

  test "should create user_announcement" do
    assert_difference('UserAnnouncement.count') do
      post user_announcements_url, params: { user_announcement: { announcement_id: @user_announcement.announcement_id, user_id: @user_announcement.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show user_announcement" do
    get user_announcement_url(@user_announcement), as: :json
    assert_response :success
  end

  test "should update user_announcement" do
    patch user_announcement_url(@user_announcement), params: { user_announcement: { announcement_id: @user_announcement.announcement_id, user_id: @user_announcement.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy user_announcement" do
    assert_difference('UserAnnouncement.count', -1) do
      delete user_announcement_url(@user_announcement), as: :json
    end

    assert_response 204
  end
end
