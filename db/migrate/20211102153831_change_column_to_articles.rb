class ChangeColumnToArticles < ActiveRecord::Migration[6.1]
  def change
    change_column :articles, :theme, :text
  end
end
