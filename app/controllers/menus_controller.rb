class MenusController < ApplicationController
  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(menu_params)
    if @menu.save
      redirect_to menus_path
    else
      render :index
    end
  end

  def index
    @menus = Menu.where(user_id: current_user)
  end

  def edit
    @menu = Menu.find_by(user_id: current_user.id, id: params[:id])
    @menu_foods = MenuFood.find_by(params[:id])
    # 各栄養素の合計値をリセットするメソッドを実行する
    # 食材から摂取する各栄養素の合計値を算出するメソッドを実行する
    #
  end

  def show
    @menu = Menu.find_by(user_id: current_user.id, id: params[:id])
    @menu_foods = MenuFood.find_by(params[:id])
  end

  def update
    @menu = Menu.find_by(user_id: current_user.id, id: params[:id])
    if @menu.update(menu_params)
      redirect_to menu_path(params[:id])
    else
      render :edit
    end
  end

  def delete
  end

  private
  def menu_params
    params.require(:menu).permit(:name, :user_id, :sum_protain, :sum_fat, :sum_carbon, :sum_calory)
  end

end
