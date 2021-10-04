class CreateMessage < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.string :nom
      t.string :email
      t.string :objet
      t.text :content
      t.timestamps
    end
  end
end
