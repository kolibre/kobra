require 'test_helper'

class QuestionInputsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @question_input = question_inputs(:one)
  end

  test "should get index" do
    get question_inputs_url, as: :json
    assert_response :success
  end

  test "should create question_input" do
    assert_difference('QuestionInput.count') do
      post question_inputs_url, params: { question_input: { allow_multiple_selections: @question_input.allow_multiple_selections, audio: @question_input.audio, default_value: @question_input.default_value, question_id: @question_input.question_id, text_alphanumeric: @question_input.text_alphanumeric, text_numeric: @question_input.text_numeric } }, as: :json
    end

    assert_response 201
  end

  test "should show question_input" do
    get question_input_url(@question_input), as: :json
    assert_response :success
  end

  test "should update question_input" do
    patch question_input_url(@question_input), params: { question_input: { allow_multiple_selections: @question_input.allow_multiple_selections, audio: @question_input.audio, default_value: @question_input.default_value, question_id: @question_input.question_id, text_alphanumeric: @question_input.text_alphanumeric, text_numeric: @question_input.text_numeric } }, as: :json
    assert_response 200
  end

  test "should destroy question_input" do
    assert_difference('QuestionInput.count', -1) do
      delete question_input_url(@question_input), as: :json
    end

    assert_response 204
  end
end
