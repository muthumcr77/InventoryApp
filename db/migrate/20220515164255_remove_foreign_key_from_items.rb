class RemoveForeignKeyFromItems < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :items, :inventories
  end
end
