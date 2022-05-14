class AddInventoryIdToItems < ActiveRecord::Migration[7.0]
  def change
    add_reference :items, :inventory, null: false, foreign_key: true
  end
end
