class AddCityToProfiles < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles, :ville, :text

  end
end
