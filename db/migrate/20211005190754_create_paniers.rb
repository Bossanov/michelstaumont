class CreatePaniers < ActiveRecord::Migration[6.1]
  def change
    create_table :paniers do |t|
      t.string :statut
      t.integer :totalprice
      t.string :typeenvoi

      t.timestamps
    end
  end
end
