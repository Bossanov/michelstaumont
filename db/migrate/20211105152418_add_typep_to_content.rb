class AddTypepToContent < ActiveRecord::Migration[6.1]
  def change
    add_column :contents, :typeq, :string
  end
end
