class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.integer :　user_information_id
      t.integer :favorite_id
      t.string :name
      t.string :seasoning
      t.string :seasoning_weight
      t.boolean :speed
      t.integer :time
      t.boolean :status

      t.timestamps
    end
  end
end
