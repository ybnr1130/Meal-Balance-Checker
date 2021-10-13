class RecipeFood < ApplicationRecord
  has_many :menu_foods
  has_many :recipe_foods
end
