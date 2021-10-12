class SearchsController < ApplicationController
  def search_food
    @content = params[:content]
    @records = Food.where('name LIKE ?', '%'+content+'&')
  end
  
  def search_recipe
    @content = params[:content]
    @records = Recipe.where('name LIKE ?', '%'+content+'&')
  end
end
