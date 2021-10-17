class RenameUserInformationColumnToContacts < ActiveRecord::Migration[5.2]
  def change
    rename_column :contacts, :user_information_id, :user_id
  end
end
