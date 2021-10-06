class CreateTableChoices < ActiveRecord::Migration[6.1]
  def change
    create_table :table_choices do |t|
      t.string :articleid
      t.string :type
      t.integer :totalprice
      t.string :papier
      t.string :cadre
      t.timestamps
    end
  end
end
