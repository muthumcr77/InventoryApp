class AddIndexToItemsOnInventoryId < ActiveRecord::Migration[7.0]
  def change
    add_index :items, :inventory_id
  end
end
