class Recipe < ApplicationRecord
  belongs_to  :user_information
  has_many :favorites
  has_many :recipe_foods
  has_many :menu_recipes
end
