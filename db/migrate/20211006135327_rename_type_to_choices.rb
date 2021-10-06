class RenameTypeToChoices < ActiveRecord::Migration[6.1]
  def change
    rename_column :choices, :type, :typechoice

  end
end
