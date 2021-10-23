class Menu < ApplicationRecord
  has_many :menu_foods
  has_many :foods, through: :menu_foods, source: :food
  belongs_to :user
  attachment :image

  # 新規食事登録時にのトータルカロリー計算のメソッド
  def calory_calculation
    sum_calory = 0
    menu_foods.each do |menu_food|
      sum_calory += menu_food.food.food_calory_calculation(menu_food.weight)
    end
    sum_calory.to_f.round(2)
  end

  def protain_calculation
    foods.sum(:protain).to_f.round(2)
  end

  def fat_calculation
    foods.sum(:fat).to_f.round(2)
  end

  def carbon_calculation
    foods.sum(:carbon).to_f.round(2)
  end

end
