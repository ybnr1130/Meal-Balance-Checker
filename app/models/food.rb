class Food < ApplicationRecord

  # リレーションの記述
  has_many :menu_foods

  #ここからCSVファイルインポートに関する記述
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      #IDが見つかればレコードを呼び出し、見つからなければ新しく作成
      food = find_by(id: row["id"]) || new
      #CSVからデータを取得し、設定する
      food.attributes = row.to_hash.slice(*updatable_attributes)
      food.save
    end
  end

  #インポート時に更新を許可するカラムを定義する
  def self.updatable_attributes
    ["id", "name", "protain", "fat", "carbon", "weight", "created_at", "updated_at"]
  end
  #ここまでCSVファイルインポートに関する記述

  # ここから検索関連のメソッド
  def self.food_serch_for(content)
    Food.where( 'name LIKE ?', "%#{content}%" )
  end
  # ここまで検索関連のメソッド

  # 食材のカロリーを計算するメソッド
  def food_calory_calculation(weight)
    food_calory = (protain.to_f*4 + fat.to_f*9 + carbon.to_f*4)*weight.to_f
    food_calory.round(2)
  end
  
  # 重量に対する食材の栄養素を計算するメソッド
  def food_protain_calculation(weight)
    food_protain = protain.to_f*weight.to_f
    food_protain.round(2)
  end
  
  def food_fat_calculation(weight)
    food_fat = fat.to_f*weight.to_f
    food_fat.round(2)
  end
  
  def food_carbon_calculation(weight)
    food_carbon = carbon.to_f*weight.to_f
    food_carbon.round(2)
  end

end
