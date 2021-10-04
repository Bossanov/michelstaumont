class RemoveTypeToArticles < ActiveRecord::Migration[6.1]
  def change
    remove_column :articles, :type
    remove_column :articles, :cadre
    remove_column :articles, :papier


  end
end
