class AddForeignKeyOnProductListing < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :product_listings, :products, column: :product_id, on_delete: :cascade
    add_foreign_key :product_listings, :locations, column: :location_id, on_delete: :cascade

    change_column_null(:product_listings, :product_id, false)
    change_column_null(:product_listings, :location_id, false)

  end
end
