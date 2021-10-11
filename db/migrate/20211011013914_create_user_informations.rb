class CreateUserInformations < ActiveRecord::Migration[5.2]
  def change
    create_table :user_informations do |t|
      t.integer :user_id
      t.integer :favorite_id
      t.string :account_name
      t.string :height
      t.string :weight
      t.string :basal_metabolism
      t.string :target
      t.string :term
      t.boolean :status
      t.integer :reason
      t.text :reason_detail

      t.timestamps
    end
  end
end
