class AddThemeToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :theme, :string
    remove_reference :articles, :theme, foreign_key: true, index: true

  end
end
