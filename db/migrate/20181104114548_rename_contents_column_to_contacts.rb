class RenameContentsColumnToContacts < ActiveRecord::Migration[5.1]
  def change
    rename_column :contacts, :contents, :content
  end
end
