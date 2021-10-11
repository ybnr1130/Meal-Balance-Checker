class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.integer :recipe_id, null: false
      t.string :name, null: false
      t.string :protain, null: false
      t.string :fat, null: false
      t.string :carbon, null: false
      t.string :weight, null: false

      t.timestamps
    end
  end
end
