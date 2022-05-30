class Inventory < ApplicationRecord

  # ASSOCIATIONS
  has_many :items, dependent: :destroy
  belongs_to :shipment, optional: true

  # VALIDATIONS
  validates :name, presence: true
  validates :shipment_id, presence: true, allow_blank: true
end
