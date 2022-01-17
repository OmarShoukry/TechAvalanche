class AddIndexOnProductListing < ActiveRecord::Migration[7.0]
  def change
    add_index(:product_listings, [:product_id, :location_id])
  end
end
