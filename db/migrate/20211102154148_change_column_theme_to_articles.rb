class ChangeColumnThemeToArticles < ActiveRecord::Migration[6.1]
  def change
    rename_column :articles, :theme, :themearticle
  end
end
