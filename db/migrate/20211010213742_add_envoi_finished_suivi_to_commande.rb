class AddEnvoiFinishedSuiviToCommande < ActiveRecord::Migration[6.1]
  def change
    add_column :commandes, :envoi, :string
    add_column :commandes, :finished, :string
    add_column :commandes, :suivi, :string
  end
end
