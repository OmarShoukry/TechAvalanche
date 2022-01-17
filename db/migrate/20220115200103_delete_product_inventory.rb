class DeleteProductInventory < ActiveRecord::Migration[7.0]
  def change
    drop_table :product_inventories
  end
end
