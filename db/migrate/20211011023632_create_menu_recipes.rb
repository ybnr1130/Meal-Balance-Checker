class CreateMenuRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :menu_recipes do |t|
      t.integer :menu_id
      t.integer :recipe_id
      t.string :weight

      t.timestamps
    end
  end
end
