class DropPost2 < ActiveRecord::Migration[5.2]
  def change
    drop_table :user_informations
  end
end
