class MenuFoodsController < ApplicationController
  def new
    @records = Food.food_serch_for(params[:content])
    @menu_food = MenuFood.new
    @menu = Menu.where(menu_id: params[:menu_id])
    # ↑menu_idを検索時に代入しているので、そのidを@menuに代入
  end

  def create
    @menu_food = MenuFood.new(menu_food_params)
    @records = Food.food_serch_for(params[:content])
    # ↑renderにより画面バック時に再検索するための記述
    if @menu_food.save
      redirect_to edit_menu_path
    else
      render "searchs/search_food"
    end
  end

  private
  def menu_food_params
    params.require(:menu_food).permit(:weight, :food_id, :menu_id)
  end
end
