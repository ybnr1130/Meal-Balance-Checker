class MenusController < ApplicationController
  def new
    # 日付を使用して検索をかけたいときに参考にするサイト→https://qiita.com/codeReona/items/338dd4e234f935c0fae8
    @foods = MenuFood.where(user_id: current_user.id)
    @recipes = MenuRecipe.wh(user_id: current_user.id)
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
