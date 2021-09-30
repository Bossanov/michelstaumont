class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.integer :price
      t.string :type
      t.string :papier
      t.string :cadre
      t.string :statut

      t.timestamps
    end
  end
end
