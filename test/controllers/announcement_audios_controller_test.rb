require 'test_helper'

class AnnouncementAudiosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @announcement_audio = announcement_audios(:one)
  end

  test "should get index" do
    get announcement_audios_url, as: :json
    assert_response :success
  end

  test "should create announcement_audio" do
    assert_difference('AnnouncementAudio.count') do
      post announcement_audios_url, params: { announcement_audio: { announcementtext: @announcement_audio.announcementtext, length: @announcement_audio.length, size: @announcement_audio.size } }, as: :json
    end

    assert_response 201
  end

  test "should show announcement_audio" do
    get announcement_audio_url(@announcement_audio), as: :json
    assert_response :success
  end

  test "should update announcement_audio" do
    patch announcement_audio_url(@announcement_audio), params: { announcement_audio: { announcementtext: @announcement_audio.announcementtext, length: @announcement_audio.length, size: @announcement_audio.size } }, as: :json
    assert_response 200
  end

  test "should destroy announcement_audio" do
    assert_difference('AnnouncementAudio.count', -1) do
      delete announcement_audio_url(@announcement_audio), as: :json
    end

    assert_response 204
  end
end
