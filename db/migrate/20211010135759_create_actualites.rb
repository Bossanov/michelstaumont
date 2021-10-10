class CreateActualites < ActiveRecord::Migration[6.1]
  def change
    create_table :actualites do |t|
      t.string :title
      t.text :body
      t.string :date
      t.string :lieu

      t.timestamps
    end
  end
end
