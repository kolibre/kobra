require 'test_helper'

class ContentAudiosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @content_audio = content_audios(:one)
  end

  test "should get index" do
    get content_audios_url, as: :json
    assert_response :success
  end

  test "should create content_audio" do
    assert_difference('ContentAudio.count') do
      post content_audios_url, params: { content_audio: { content_id: @content_audio.content_id, length: @content_audio.length, size: @content_audio.size } }, as: :json
    end

    assert_response 201
  end

  test "should show content_audio" do
    get content_audio_url(@content_audio), as: :json
    assert_response :success
  end

  test "should update content_audio" do
    patch content_audio_url(@content_audio), params: { content_audio: { content_id: @content_audio.content_id, length: @content_audio.length, size: @content_audio.size } }, as: :json
    assert_response 200
  end

  test "should destroy content_audio" do
    assert_difference('ContentAudio.count', -1) do
      delete content_audio_url(@content_audio), as: :json
    end

    assert_response 204
  end
end
