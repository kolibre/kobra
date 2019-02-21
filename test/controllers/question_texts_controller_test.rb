require 'test_helper'

class QuestionTextsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @question_text = question_texts(:one)
  end

  test "should get index" do
    get question_texts_url, as: :json
    assert_response :success
  end

  test "should create question_text" do
    assert_difference('QuestionText.count') do
      post question_texts_url, params: { question_text: { language_id: @question_text.language_id, text: @question_text.text } }, as: :json
    end

    assert_response 201
  end

  test "should show question_text" do
    get question_text_url(@question_text), as: :json
    assert_response :success
  end

  test "should update question_text" do
    patch question_text_url(@question_text), params: { question_text: { language_id: @question_text.language_id, text: @question_text.text } }, as: :json
    assert_response 200
  end

  test "should destroy question_text" do
    assert_difference('QuestionText.count', -1) do
      delete question_text_url(@question_text), as: :json
    end

    assert_response 204
  end
end
