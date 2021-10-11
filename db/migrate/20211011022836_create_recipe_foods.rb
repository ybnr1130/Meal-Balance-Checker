class CreateRecipeFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_foods do |t|
      t.integer :food_id, null: false
      t.integer :recipe_id, null: false
      t.integer :weight, null: false

      t.timestamps
    end
  end
end
