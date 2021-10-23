class DropPost < ActiveRecord::Migration[5.2]
  def change
    drop_table :recipes
    drop_table :menu_recipes
    drop_table :favorites
  end
end
