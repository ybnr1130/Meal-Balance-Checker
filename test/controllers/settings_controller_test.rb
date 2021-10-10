require 'test_helper'

class SettingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get settings_index_url
    assert_response :success
  end

  test "should get edit" do
    get settings_edit_url
    assert_response :success
  end

  test "should get update" do
    get settings_update_url
    assert_response :success
  end

  test "should get delete" do
    get settings_delete_url
    assert_response :success
  end

  test "should get deleted" do
    get settings_deleted_url
    assert_response :success
  end

  test "should get contact" do
    get settings_contact_url
    assert_response :success
  end

  test "should get send" do
    get settings_send_url
    assert_response :success
  end

end
