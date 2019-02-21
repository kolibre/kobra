require 'test_helper'

class QuestionQuestionTextsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @question_question_text = question_question_texts(:one)
  end

  test "should get index" do
    get question_question_texts_url, as: :json
    assert_response :success
  end

  test "should create question_question_text" do
    assert_difference('QuestionQuestionText.count') do
      post question_question_texts_url, params: { question_question_text: { question_id: @question_question_text.question_id, question_text_id: @question_question_text.question_text_id } }, as: :json
    end

    assert_response 201
  end

  test "should show question_question_text" do
    get question_question_text_url(@question_question_text), as: :json
    assert_response :success
  end

  test "should update question_question_text" do
    patch question_question_text_url(@question_question_text), params: { question_question_text: { question_id: @question_question_text.question_id, question_text_id: @question_question_text.question_text_id } }, as: :json
    assert_response 200
  end

  test "should destroy question_question_text" do
    assert_difference('QuestionQuestionText.count', -1) do
      delete question_question_text_url(@question_question_text), as: :json
    end

    assert_response 204
  end
end
