class RemoveIndexFromInventoriesOnShipment < ActiveRecord::Migration[7.0]
  def change
    remove_index :inventories, :shipment_id
  end
end
