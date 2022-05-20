class AddShipmentIdToInventories < ActiveRecord::Migration[7.0]
  def change
    add_reference :inventories, :shipment, null: false
  end
end
