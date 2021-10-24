class FoodsController < ApplicationController
  def create
  end

  def import
    Food.import(params[:file])
    redirect_to menus_path(current_user)
  end

  def data
  end

end
