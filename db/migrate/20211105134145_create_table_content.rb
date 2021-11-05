class CreateTableContent < ActiveRecord::Migration[6.1]
  def change
    create_table :table_contents do |t|
      t.string :typea
      t.string :typeb
      t.string :typec
      t.string :typed
      t.string :typee
      t.string :typef
      t.string :typeg
      t.string :typeh
      t.text :typei
      t.string :typej
      t.string :typek
      t.string :typel
      t.string :typem
      t.string :typen
      t.text :typeo
      t.text :typep

      t.timestamps
    end
  end
end
