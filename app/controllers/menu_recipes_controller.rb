class MenuRecipesController < ApplicationController
  def create
    @menu_food = MenuFood.new(menu_food_params)
    @menu_food.user_id = current_user.id
    @menu_food.save
    redirect_to new_menu_path
  end


  private
  def menu_food_params
    params.require(:menu_food).permit(:weight)
  end
end