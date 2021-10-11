class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.integer :user_information_id
      t.string :protain
      t.string :fat
      t.string :carbon
      t.integer :category

      t.timestamps
    end
  end
end
