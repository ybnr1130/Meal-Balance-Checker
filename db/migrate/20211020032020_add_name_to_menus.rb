class AddNameToMenus < ActiveRecord::Migration[5.2]
  def change
    add_column :menus, :name, :string
  end
end
