class AddColumnsToMenus < ActiveRecord::Migration[5.2]
  def change
    add_column :menus, :sum_calory, :integer
  end
end
