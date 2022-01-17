class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :addressline1
      t.string :addressline2
      t.integer :province
      t.string :city
      t.string :postalcode

      t.timestamps
    end
  end
end
