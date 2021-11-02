class CreateTheme < ActiveRecord::Migration[6.1]
  def change
    create_table :themes do |t|
      t.string :nom

      t.timestamps
    end
    add_reference :articles, :theme, foreign_key: true, index: true

  end
end
