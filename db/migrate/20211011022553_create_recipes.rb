class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.integer :　user_information_id
      t.integer :favorite_id, null: false
      t.string :name, null: false
      t.string :seasoning, null: false
      t.string :seasoning_weight, null: false
      t.boolean :speed, null: false
      t.integer :time, null: false
      t.boolean :status, null: false

      t.timestamps
    end
  end
end
