class Food < ApplicationRecord

  # リレーションの記述
  has_many :recipe_foods
  has_many :menu_foods

  #ここからCSVファイルインポートに関する記述
  #参考元：https://qiita.com/d0ne1s/items/d49423796dd1c801afd3
  #参考元：https://note.com/marikooota/n/n6215adaecf9a
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      #IDが見つかればレコードを呼び出し、見つからなければ新しく作成
      food = find_by(id: row["id"]) || new
      #CSVからデータを取得し、設定する
      food.attributes = row.to_hash.slice(*updatable_attributes)
      food.save
    end
  end

  #更新を許可するカラムを定義する
  def self.updatable_attributes
    ["id", "name", "protain", "fat", "carbon", "weight", "created_at", "updated_at"]
  end
  #ここまでCSVファイルインポートに関する記述

end
