class Favorite < ApplicationRecord
  belongs_to :user_information
  belongs_to :recipe
end
