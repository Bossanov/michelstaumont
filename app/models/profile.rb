class Profile < ApplicationRecord
  belongs_to :user
  has_many :paniers, dependent: :destroy
end
