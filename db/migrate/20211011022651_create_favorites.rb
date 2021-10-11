class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.integer :user_information_id, null: false
      t.string :recipe_id, null: false

      t.timestamps
    end
  end
end
