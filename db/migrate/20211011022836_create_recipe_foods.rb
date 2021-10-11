class CreateRecipeFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_foods do |t|
      t.integer :food_id
      t.integer :recipe_id
      t.integer :weight

      t.timestamps
    end
  end
end
