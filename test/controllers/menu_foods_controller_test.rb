require 'test_helper'

class MenuFoodsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get menu_foods_create_url
    assert_response :success
  end

end
