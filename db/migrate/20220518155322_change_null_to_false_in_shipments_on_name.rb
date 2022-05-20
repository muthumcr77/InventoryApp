class ChangeNullToFalseInShipmentsOnName < ActiveRecord::Migration[7.0]
  def change
    change_column :shipments, :name, :string, null: false
  end
end
