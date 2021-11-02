class RemoveReferenceArticleProfile < ActiveRecord::Migration[6.1]
  def change
    remove_reference :articles, :profile, foreign_key: true, index: true
  end
end
