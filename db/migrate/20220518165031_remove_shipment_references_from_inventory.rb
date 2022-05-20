class RemoveShipmentReferencesFromInventory < ActiveRecord::Migration[7.0]
  def change
    remove_reference :inventories, :shipment, null: false
  end
end
