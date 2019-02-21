require 'test_helper'

class ContentResourcesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @content_resource = content_resources(:one)
  end

  test "should get index" do
    get content_resources_url, as: :json
    assert_response :success
  end

  test "should create content_resource" do
    assert_difference('ContentResource.count') do
      post content_resources_url, params: { content_resource: { bytes: @content_resource.bytes, content_id: @content_resource.content_id, filename: @content_resource.filename, mimetype: @content_resource.mimetype } }, as: :json
    end

    assert_response 201
  end

  test "should show content_resource" do
    get content_resource_url(@content_resource), as: :json
    assert_response :success
  end

  test "should update content_resource" do
    patch content_resource_url(@content_resource), params: { content_resource: { bytes: @content_resource.bytes, content_id: @content_resource.content_id, filename: @content_resource.filename, mimetype: @content_resource.mimetype } }, as: :json
    assert_response 200
  end

  test "should destroy content_resource" do
    assert_difference('ContentResource.count', -1) do
      delete content_resource_url(@content_resource), as: :json
    end

    assert_response 204
  end
end
