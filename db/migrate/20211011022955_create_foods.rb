class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.integer :recipe_id
      t.string :name
      t.string :protain
      t.string :fat
      t.string :carbon
      t.string :weight

      t.timestamps
    end
  end
end
