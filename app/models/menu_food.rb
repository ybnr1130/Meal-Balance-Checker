class MenuFood < ApplicationRecord
  belongs_to :food
  belongs_to :menu
  
  # 新規食事登録時に食材検索したのちのカロリー計算および保存のメソッド
  def self.food_calculation
    sum_calory = (food.protain.to_i*4 + food.fat.to_i*9 + food.carbon.to_i*4) * menu_food.weight
    
  end
  
end
