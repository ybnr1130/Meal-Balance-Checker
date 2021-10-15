class MenusController < ApplicationController
  def new
    # 日付を使用して検索をかけたいときに参考にするサイト→https://qiita.com/codeReona/items/338dd4e234f935c0fae8
    # @foods = MenuFood.where(user_id: user_information_id)
    # @recipes = MenuRecipe.where(user_id: user_information_id)
    @foods = MenuFood.all
    @recipes = MenuRecipe.all
  end

  def create
  end

  def index
    @foods = Menu.all
  end

  def edit
  end

  def update
  end

  def delete
  end
end
