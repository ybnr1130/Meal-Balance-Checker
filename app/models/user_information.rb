class UserInformation < ApplicationRecord
  has_many :favorites
  has_many :recipes
  has_many :menus
end
