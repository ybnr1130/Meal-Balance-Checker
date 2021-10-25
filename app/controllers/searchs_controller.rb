class SearchsController < ApplicationController
  # def search_food
    # @records = Food.food_serch_for(params[:content])
    # @menu_food = MenuFood.new
  # end

  def keyword

  end

  def search_result
    @records = Food.food_serch_for(params[:content])
  end

end
