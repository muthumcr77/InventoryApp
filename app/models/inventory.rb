class Inventory < ApplicationRecord

  # ASSOCIATIONS
  has_many :items, dependent: :destroy

  # VALIDATIONS
  validates :name, presence: true
end
