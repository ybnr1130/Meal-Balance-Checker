class MenuFood < ApplicationRecord
  belongs_to :food
  belongs_to :menu
end
