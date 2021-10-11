class CreateMenuFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :menu_foods do |t|
      t.integer :menu_id, null: false
      t.integer :food_id, null: false
      t.string :weight, null: false

      t.timestamps
    end
  end
end
