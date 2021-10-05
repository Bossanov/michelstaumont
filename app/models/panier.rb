class Panier < ApplicationRecord
  belongs_to :profile
  serialize :contenu
end
