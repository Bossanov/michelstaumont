class RenameContents < ActiveRecord::Migration[6.1]
  def change
    rename_table :content, :contents
  end
end
