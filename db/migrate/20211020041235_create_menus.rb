class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.integer :user_id
      t.string :name
      t.integer :sum_protain
      t.integer :sum_fat
      t.integer :sum_carbon
      t.integer :sum_calory

      
      t.timestamps
    end
  end
end
