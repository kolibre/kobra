require 'test_helper'

class ContentListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @content_list = content_lists(:one)
  end

  test "should get index" do
    get content_lists_url, as: :json
    assert_response :success
  end

  test "should create content_list" do
    assert_difference('ContentList.count') do
      post content_lists_url, params: { content_list: { name: @content_list.name } }, as: :json
    end

    assert_response 201
  end

  test "should show content_list" do
    get content_list_url(@content_list), as: :json
    assert_response :success
  end

  test "should update content_list" do
    patch content_list_url(@content_list), params: { content_list: { name: @content_list.name } }, as: :json
    assert_response 200
  end

  test "should destroy content_list" do
    assert_difference('ContentList.count', -1) do
      delete content_list_url(@content_list), as: :json
    end

    assert_response 204
  end
end
