class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.integer :user_information_id, null: false
      t.string :protain, null: false
      t.string :fat, null: false
      t.string :carbon, null: false
      t.integer :category, null: false

      t.timestamps
    end
  end
end
