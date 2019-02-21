require 'test_helper'

class ContentMetadataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @content_metadatum = content_metadata(:one)
  end

  test "should get index" do
    get content_metadata_url, as: :json
    assert_response :success
  end

  test "should create content_metadatum" do
    assert_difference('ContentMetadatum.count') do
      post content_metadata_url, params: { content_metadatum: { content_id: @content_metadatum.content_id, key: @content_metadatum.key, value: @content_metadatum.value } }, as: :json
    end

    assert_response 201
  end

  test "should show content_metadatum" do
    get content_metadatum_url(@content_metadatum), as: :json
    assert_response :success
  end

  test "should update content_metadatum" do
    patch content_metadatum_url(@content_metadatum), params: { content_metadatum: { content_id: @content_metadatum.content_id, key: @content_metadatum.key, value: @content_metadatum.value } }, as: :json
    assert_response 200
  end

  test "should destroy content_metadatum" do
    assert_difference('ContentMetadatum.count', -1) do
      delete content_metadatum_url(@content_metadatum), as: :json
    end

    assert_response 204
  end
end
