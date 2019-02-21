require 'test_helper'

class QuestionTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @question_type = question_types(:one)
  end

  test "should get index" do
    get question_types_url, as: :json
    assert_response :success
  end

  test "should create question_type" do
    assert_difference('QuestionType.count') do
      post question_types_url, params: { question_type: { type: @question_type.type } }, as: :json
    end

    assert_response 201
  end

  test "should show question_type" do
    get question_type_url(@question_type), as: :json
    assert_response :success
  end

  test "should update question_type" do
    patch question_type_url(@question_type), params: { question_type: { type: @question_type.type } }, as: :json
    assert_response 200
  end

  test "should destroy question_type" do
    assert_difference('QuestionType.count', -1) do
      delete question_type_url(@question_type), as: :json
    end

    assert_response 204
  end
end
