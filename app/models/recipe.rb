class Recipe < ApplicationRecord
  belongs_to  :user_information
  has_many :favorites
  has_many :recipe_foods
  has_many :menu_recipes
  
  
  # レシピ検索のメソッド
  def self.recipe_serch_for(content)
    Recipe.where( 'name LIKE ?', "%#{content}%" )
  end
  
end
