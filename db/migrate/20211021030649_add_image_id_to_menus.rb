class AddImageIdToMenus < ActiveRecord::Migration[5.2]
  def change
    add_column :menus, :image_id, :string
  end
end
