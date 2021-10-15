class SearchsController < ApplicationController
  def search_food
    @records = Food.food_serch_for(params[:content])
    @menu_food = MenuFood.new
  end

  def search_recipe
    @records = Recipe.recipe_search_for(@content)
    @menu_recipe = MenuRecipe.new
  end
end
