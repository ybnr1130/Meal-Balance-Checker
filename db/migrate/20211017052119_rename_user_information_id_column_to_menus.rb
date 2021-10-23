class RenameUserInformationIdColumnToMenus < ActiveRecord::Migration[5.2]
  def change
    rename_column :menus, :user_information_id, :user_id
  end
end
