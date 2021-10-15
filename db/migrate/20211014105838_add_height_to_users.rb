class AddHeightToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :favorite_id, :integer
    add_column :users, :account_name, :string
    add_column :users, :height, :string
    add_column :users, :weight, :string
    add_column :users, :basal_metabolism, :string
    add_column :users, :target, :string
    add_column :users, :term, :string
    add_column :users, :status, :boolean
    add_column :users, :reason, :integer
    add_column :users, :reason_detail, :text
  end
end
