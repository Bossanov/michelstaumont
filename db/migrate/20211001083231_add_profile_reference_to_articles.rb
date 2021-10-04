class AddProfileReferenceToArticles < ActiveRecord::Migration[6.1]
  def change
    add_reference :articles, :profile, foreign_key: true, index: true
  end
end
