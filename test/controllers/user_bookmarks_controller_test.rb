require 'test_helper'

class UserBookmarksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_bookmark = user_bookmarks(:one)
  end

  test "should get index" do
    get user_bookmarks_url, as: :json
    assert_response :success
  end

  test "should create user_bookmark" do
    assert_difference('UserBookmark.count') do
      post user_bookmarks_url, params: { user_bookmark: { bookmarkset: @user_bookmark.bookmarkset, content_id: @user_bookmark.content_id, user_id: @user_bookmark.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show user_bookmark" do
    get user_bookmark_url(@user_bookmark), as: :json
    assert_response :success
  end

  test "should update user_bookmark" do
    patch user_bookmark_url(@user_bookmark), params: { user_bookmark: { bookmarkset: @user_bookmark.bookmarkset, content_id: @user_bookmark.content_id, user_id: @user_bookmark.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy user_bookmark" do
    assert_difference('UserBookmark.count', -1) do
      delete user_bookmark_url(@user_bookmark), as: :json
    end

    assert_response 204
  end
end
