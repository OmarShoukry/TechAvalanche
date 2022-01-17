class MakeFieldsNonNullableOnProducts < ActiveRecord::Migration[7.0]
  def change
    change_column_null(:products, :name, false)
    change_column_null(:products, :description, true)
    change_column_null(:products, :weight, false)
    change_column_null(:products, :width, false)
    change_column_null(:products, :height, false)
    change_column_null(:products, :depth, false)
  end
end
