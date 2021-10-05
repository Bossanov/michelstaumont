class Add < ActiveRecord::Migration[6.1]
  def change
    add_column :paniers, :contenu, :text
  end
end
