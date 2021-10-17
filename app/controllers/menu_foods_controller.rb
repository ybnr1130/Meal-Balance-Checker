class MenuFoodsController < ApplicationController
  def create
    @menu_food = MenuFood.new(menu_food_params)
    @records = Food.food_serch_for(params[:content])
    if @menu_food.save
      redirect_to edit_menu
    else
      render "searchs/search_food"
    end
  end

  private
  def menu_food_params
    params.require(:menu_food).permit(:weight, :food_id, :menu_id)
  end
end
