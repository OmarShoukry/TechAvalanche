class MakeFieldsNonNullableOnProductListings < ActiveRecord::Migration[7.0]
  def change
    change_column_null(:product_listings, :quantity, false)
    change_column_null(:product_listings, :locationid, false)
    change_column_null(:product_listings, :productid, false)
  end
end
