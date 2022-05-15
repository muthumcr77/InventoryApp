class Item < ApplicationRecord

  # ASSOCIATIONS
  belongs_to :inventory

  # VALIDATIONS
  validates :name, presence: true
  validates :count, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
