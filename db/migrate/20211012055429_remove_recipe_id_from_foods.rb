class RemoveRecipeIdFromFoods < ActiveRecord::Migration[5.2]
  def change
    remove_column :foods, :recipe_id, :integer
  end
end
