class DropPost3 < ActiveRecord::Migration[5.2]
  def change
    drop_table :recipe_foods
  end
end
