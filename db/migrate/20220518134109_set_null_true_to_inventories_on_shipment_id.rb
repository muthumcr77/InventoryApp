class SetNullTrueToInventoriesOnShipmentId < ActiveRecord::Migration[7.0]
  def change
    change_column :inventories, :shipment_id, :integer, null: true
  end
end
