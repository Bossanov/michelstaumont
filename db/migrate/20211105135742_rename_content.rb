class RenameContent < ActiveRecord::Migration[6.1]
  def change
    rename_table :table_contents, :content
  end
end
