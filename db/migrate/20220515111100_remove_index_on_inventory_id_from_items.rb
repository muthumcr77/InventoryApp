class RemoveIndexOnInventoryIdFromItems < ActiveRecord::Migration[7.0]
  def change
    remove_index :items, :inventory_id
  end
end
