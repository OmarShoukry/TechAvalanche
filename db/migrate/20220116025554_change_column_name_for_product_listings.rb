class ChangeColumnNameForProductListings < ActiveRecord::Migration[7.0]
  def change
    rename_column(:product_listings, :productid, :product_id)
    rename_column(:product_listings, :locationid, :location_id)
  end
end
