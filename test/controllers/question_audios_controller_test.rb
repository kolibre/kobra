require 'test_helper'

class QuestionAudiosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @question_audio = question_audios(:one)
  end

  test "should get index" do
    get question_audios_url, as: :json
    assert_response :success
  end

  test "should create question_audio" do
    assert_difference('QuestionAudio.count') do
      post question_audios_url, params: { question_audio: { length: @question_audio.length, question_text_id: @question_audio.question_text_id, size: @question_audio.size } }, as: :json
    end

    assert_response 201
  end

  test "should show question_audio" do
    get question_audio_url(@question_audio), as: :json
    assert_response :success
  end

  test "should update question_audio" do
    patch question_audio_url(@question_audio), params: { question_audio: { length: @question_audio.length, question_text_id: @question_audio.question_text_id, size: @question_audio.size } }, as: :json
    assert_response 200
  end

  test "should destroy question_audio" do
    assert_difference('QuestionAudio.count', -1) do
      delete question_audio_url(@question_audio), as: :json
    end

    assert_response 204
  end
end
