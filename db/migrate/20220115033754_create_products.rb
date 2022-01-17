class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.float :weight
      t.integer :width
      t.integer :height
      t.integer :depth

      t.timestamps
    end
  end
end