class ChangeTableChoicesToChoices < ActiveRecord::Migration[6.1]
  def change
    rename_table :table_choices, :choices
  end
end
