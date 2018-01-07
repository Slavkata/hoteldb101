require 'test_helper'

class HotelsMetadataControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hotels_metadata_index_url
    assert_response :success
  end

  test "should get create" do
    get hotels_metadata_create_url
    assert_response :success
  end

  test "should get delete" do
    get hotels_metadata_delete_url
    assert_response :success
  end

  test "should get update" do
    get hotels_metadata_update_url
    assert_response :success
  end

end
