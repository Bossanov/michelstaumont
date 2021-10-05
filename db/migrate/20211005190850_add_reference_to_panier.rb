class AddReferenceToPanier < ActiveRecord::Migration[6.1]
  def change
    add_reference :paniers, :profile, foreign_key: true, index: true
  end
end
