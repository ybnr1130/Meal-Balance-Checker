class Menu < ApplicationRecord
  belongs_to :user_information
  has_many :menu_recipes
  has_many :menu_foods
end
