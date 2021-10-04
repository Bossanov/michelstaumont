class ChangeTypeToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :typearray, :text, array: true, default: []
    add_column :articles, :papierarray, :text, array: true, default: []
    add_column :articles, :cadrearray, :text, array: true, default: []


  end
end
