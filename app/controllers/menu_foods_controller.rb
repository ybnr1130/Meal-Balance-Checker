class MenuFoodsController < ApplicationController
  def new
    @records = Food.food_serch_for(params[:content])
    @menu_food = MenuFood.new
    @menu = Menu.where(menu_id: params[:menu_id])
  end

  def create
    @menu_food = MenuFood.new(menu_food_params)
    @records = Food.food_serch_for(params[:content])
    # ↑renderにより画面バック時に再検索するための記述
    if @menu_food.save
      redirect_to edit_menu_path(@menu_food.menu_id)
    else
      render :new
    end
  end

  def update
    @menu_food = MenuFood.find(params[:id])
    if @menu_food.update(menu_food_params)
    else
      render :edit
    end
  end

  def destroy
    menu_food = MenuFood.find(params[:id])
    menu_food.destroy
    redirect_to edit_menu_path(menu_food.menu_id)
  end

  private
  def menu_food_params
    params.require(:menu_food).permit(:weight, :food_id, :menu_id)
  end
end
