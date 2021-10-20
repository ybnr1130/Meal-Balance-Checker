class Menu < ApplicationRecord
  has_many :menu_foods
  belongs_to :user
end
