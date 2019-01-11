require 'test_helper'

class AnnouncementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @announcement = announcements(:one)
  end

  test "should get index" do
    get announcements_url, as: :json
    assert_response :success
  end

  test "should create announcement" do
    assert_difference('Announcement.count') do
      post announcements_url, params: { announcement: { priority: @announcement.priority, type: @announcement.type } }, as: :json
    end

    assert_response 201
  end

  test "should show announcement" do
    get announcement_url(@announcement), as: :json
    assert_response :success
  end

  test "should update announcement" do
    patch announcement_url(@announcement), params: { announcement: { priority: @announcement.priority, type: @announcement.type } }, as: :json
    assert_response 200
  end

  test "should destroy announcement" do
    assert_difference('Announcement.count', -1) do
      delete announcement_url(@announcement), as: :json
    end

    assert_response 204
  end
end
