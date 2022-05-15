class Inventory < ApplicationRecord

  # ASSOCIATIONS
  has_many :items, dependent: :destroy
  accepts_nested_attributes_for :items
end
