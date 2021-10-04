class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :last_name
      t.string :first_name
      t.string :rue
      t.string :postcode
      t.string :pays
      t.string :phone
      t.string :statut

      t.timestamps
    end
  end
end
