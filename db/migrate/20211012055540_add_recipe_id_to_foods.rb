class AddRecipeIdToFoods < ActiveRecord::Migration[5.2]
  def change
    add_column :foods, :recipe_id, :integer
  end
end
