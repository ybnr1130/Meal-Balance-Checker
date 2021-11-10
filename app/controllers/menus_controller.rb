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
    @menu_foods = MenuFood.where(menu_id: params[:id])
  end

  def show
    @menu = Menu.find_by(user_id: current_user.id, id: params[:id])
    @menu_foods = MenuFood.where(menu_id: params[:id])
  end

  def update
    @menu = Menu.find_by(user_id: current_user.id, id: params[:id])
    if @menu.update(menu_params)
      @menu_foods = MenuFood.where(menu_id: params[:id])
      redirect_to menu_path(params[:id])
    else
      render :edit
    end
  end

  def destroy
    menu = Menu.find(params[:id])
    menu.destroy
    redirect_to menus_path
  end

  private
  def menu_params
    params.require(:menu).permit(:name, :user_id, :sum_protain, :sum_fat, :sum_carbon, :sum_calory, :image)
  end

end
