require 'test_helper'

class MenuRecipesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get menu_recipes_create_url
    assert_response :success
  end

end
