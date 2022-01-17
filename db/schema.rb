# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_01_17_210120) do

  create_table "locations", force: :cascade do |t|
    t.string "name", null: false
    t.string "addressline1", null: false
    t.string "addressline2"
    t.integer "province"
    t.string "city", null: false
    t.string "postalcode", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "product_listings", force: :cascade do |t|
    t.integer "quantity", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "location_id"
    t.integer "product_id"
    t.index ["product_id", "location_id"], name: "index_product_listings_on_product_id_and_location_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name", null: false
    t.float "weight", null: false
    t.integer "width", null: false
    t.integer "height", null: false
    t.integer "depth", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "description"
  end

  add_foreign_key "product_listings", "locations"
  add_foreign_key "product_listings", "products"
end
