class FoodsController < ApplicationController
  def create
  end

  def import
    Food.import(params[:file])
    redirect_to root_url
  end

end
