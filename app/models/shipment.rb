class Shipment < ApplicationRecord

  # ASSOCIATIONS
  has_many :inventories
  has_many :items, through: :inventories

  # VALIDATIONS 
  validates :name, length: { maximum: 20 }
end
