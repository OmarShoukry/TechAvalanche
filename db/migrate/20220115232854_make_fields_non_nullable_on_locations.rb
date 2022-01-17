class MakeFieldsNonNullableOnLocations < ActiveRecord::Migration[7.0]
  def change
    change_column_null(:locations, :name, false)
    change_column_null(:locations, :addressline1, false)
    change_column_null(:locations, :city, false)
    change_column_null(:locations, :postalcode, false)
  end
end
