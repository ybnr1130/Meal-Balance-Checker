class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.integer :user_information_id, null: false
      t.integer :object, null: false
      t.text :body, null: false

      t.timestamps
    end
  end
end
