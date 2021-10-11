class CreateCommandes < ActiveRecord::Migration[6.1]
  def change
    create_table :commandes do |t|
      t.string :statut
      t.timestamps
    end
    add_reference :commandes, :panier, foreign_key: true, index: true
  end
end
