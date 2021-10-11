class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.integer :user_information_id
      t.integer :object
      t.text :body

      t.timestamps
    end
  end
end
