require 'test_helper'

class AnnouncementTextsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @announcement_text = announcement_texts(:one)
  end

  test "should get index" do
    get announcement_texts_url, as: :json
    assert_response :success
  end

  test "should create announcement_text" do
    assert_difference('AnnouncementText.count') do
      post announcement_texts_url, params: { announcement_text: { announcement_id: @announcement_text.announcement_id, language_id: @announcement_text.language_id, text: @announcement_text.text } }, as: :json
    end

    assert_response 201
  end

  test "should show announcement_text" do
    get announcement_text_url(@announcement_text), as: :json
    assert_response :success
  end

  test "should update announcement_text" do
    patch announcement_text_url(@announcement_text), params: { announcement_text: { announcement_id: @announcement_text.announcement_id, language_id: @announcement_text.language_id, text: @announcement_text.text } }, as: :json
    assert_response 200
  end

  test "should destroy announcement_text" do
    assert_difference('AnnouncementText.count', -1) do
      delete announcement_text_url(@announcement_text), as: :json
    end

    assert_response 204
  end
end
