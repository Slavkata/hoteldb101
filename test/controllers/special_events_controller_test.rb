require 'test_helper'

class SpecialEventsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get special_events_index_url
    assert_response :success
  end

  test "should get create" do
    get special_events_create_url
    assert_response :success
  end

  test "should get delete" do
    get special_events_delete_url
    assert_response :success
  end

  test "should get update" do
    get special_events_update_url
    assert_response :success
  end

end
