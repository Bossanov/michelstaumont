class AddUserReferenceToProfiles < ActiveRecord::Migration[6.1]
  def change
    add_reference :profiles, :user, foreign_key: true, index: true

  end
end
