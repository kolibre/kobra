require 'test_helper'

class DaisyFormatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @daisy_format = daisy_formats(:one)
  end

  test "should get index" do
    get daisy_formats_url, as: :json
    assert_response :success
  end

  test "should create daisy_format" do
    assert_difference('DaisyFormat.count') do
      post daisy_formats_url, params: { daisy_format: { format: @daisy_format.format } }, as: :json
    end

    assert_response 201
  end

  test "should show daisy_format" do
    get daisy_format_url(@daisy_format), as: :json
    assert_response :success
  end

  test "should update daisy_format" do
    patch daisy_format_url(@daisy_format), params: { daisy_format: { format: @daisy_format.format } }, as: :json
    assert_response 200
  end

  test "should destroy daisy_format" do
    assert_difference('DaisyFormat.count', -1) do
      delete daisy_format_url(@daisy_format), as: :json
    end

    assert_response 204
  end
end
