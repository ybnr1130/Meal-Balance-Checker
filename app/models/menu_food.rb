class MenuFood < ApplicationRecord
  belongs_to :food
  belongs_to :menu

  # menuのeditやshowのトータルPFCやカロリーを計算する前に、変数を一度リセットするメソッド
  def self.reset_calculation
    sum_calory = sum_protain = sum_fat = sum_carbon = 0
  end



  # 新規食事登録時にのトータルカロリー計算のメソッド
  def self.food_calculation
    sum_calory = (food.protain.to_i*4 + food.fat.to_i*9 + food.carbon.to_i*4) * menu_food.weight
    calory = sum_calory #カロリーカラムに計算結果を格納
    calory.save #計算値を保存
  end

  # @food_protain_sum += food.protain %>
  # @food_fat_sum += food.fat %>
  # @food_carbon_sum += food.carbon %>
  # @food_calory_sum += @food_calory %>
  # @food_calory == 0 %>

end
