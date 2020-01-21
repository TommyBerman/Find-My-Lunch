# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_21_095135) do

  create_table "camden_restaurants", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "address"
    t.integer "price_range"
    t.float "rating"
    t.string "google_id"
  end

  create_table "canary_wharf_restaurants", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "address"
    t.integer "price_range"
    t.float "rating"
    t.string "google_id"
  end

  create_table "greenwich_restaurants", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "address"
    t.integer "price_range"
    t.float "rating"
    t.string "google_id"
  end

  create_table "kings_cross_restaurants", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "address"
    t.integer "price_range"
    t.float "rating"
    t.string "google_id"
  end

  create_table "paddington_restaurants", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "address"
    t.integer "price_range"
    t.float "rating"
    t.string "google_id"
  end

  create_table "restaurant_tags", force: :cascade do |t|
    t.integer "restaurant_id", null: false
    t.integer "tag_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["restaurant_id"], name: "index_restaurant_tags_on_restaurant_id"
    t.index ["tag_id"], name: "index_restaurant_tags_on_tag_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "area"
    t.integer "price_range"
    t.integer "rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "address"
    t.string "google_rating"
    t.string "google_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.integer "stars"
    t.integer "user_id", null: false
    t.integer "restuarant_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["restuarant_id"], name: "index_reviews_on_restuarant_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "shoreditch_restaurants", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "address"
    t.integer "price_range"
    t.float "rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "google_id"
  end

  create_table "soho_restaurants", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "address"
    t.integer "price_range"
    t.float "rating"
    t.string "google_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "south_bank_restaurants", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "address"
    t.integer "price_range"
    t.float "rating"
    t.string "google_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "the_city_restaurants", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "address"
    t.integer "price_range"
    t.float "rating"
    t.string "google_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "email"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "westminster_restaurants", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "address"
    t.integer "price_range"
    t.float "rating"
    t.string "google_id"
  end

  add_foreign_key "restaurant_tags", "restaurants"
  add_foreign_key "restaurant_tags", "tags"
  add_foreign_key "reviews", "restuarants"
  add_foreign_key "reviews", "users"
end
