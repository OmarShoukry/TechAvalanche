class AddForeignKeyOnProductListing < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :product_listings, :products, column: :product_id
    add_foreign_key :product_listings, :locations, column: :location_id

  end
end
