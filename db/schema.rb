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

ActiveRecord::Schema.define(version: 2020_01_22_161636) do

  create_table "areas", force: :cascade do |t|
    t.string "name"
  end

  create_table "restaurant_tags", force: :cascade do |t|
    t.integer "restaurant_id", null: false
    t.integer "tag_id", null: false
    t.index ["restaurant_id"], name: "index_restaurant_tags_on_restaurant_id"
    t.index ["tag_id"], name: "index_restaurant_tags_on_tag_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "price_range"
    t.integer "rating"
    t.string "google_rating"
    t.string "google_id"
    t.integer "area_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["area_id"], name: "index_restaurants_on_area_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.integer "stars"
    t.integer "user_id", null: false
    t.integer "restaurant_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["restaurant_id"], name: "index_reviews_on_restaurant_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.text "description"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.integer "area_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["area_id"], name: "index_users_on_area_id"
  end

  add_foreign_key "restaurant_tags", "restaurants"
  add_foreign_key "restaurant_tags", "tags"
  add_foreign_key "restaurants", "areas"
  add_foreign_key "reviews", "restaurants"
  add_foreign_key "reviews", "users"
  add_foreign_key "users", "areas"
end
