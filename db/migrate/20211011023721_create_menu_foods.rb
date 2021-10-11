class CreateMenuFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :menu_foods do |t|
      t.integer :menu_id
      t.integer :food_id
      t.string :weight

      t.timestamps
    end
  end
end
