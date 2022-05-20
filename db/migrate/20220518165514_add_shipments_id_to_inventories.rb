class AddShipmentsIdToInventories < ActiveRecord::Migration[7.0]
  def change
    add_column :inventories, :shipment_id, :integer, null: true
  end
end
