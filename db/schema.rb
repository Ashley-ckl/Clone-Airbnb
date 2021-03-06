# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_05_23_123303) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "space_id"
    t.integer "total_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status", default: "pending"
    t.integer "hours"
    t.bigint "host_id"
    t.date "start_date"
    t.time "start_time"
    t.index ["host_id"], name: "index_bookings_on_host_id"
    t.index ["space_id"], name: "index_bookings_on_space_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "pictures", force: :cascade do |t|
    t.bigint "space_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["space_id"], name: "index_pictures_on_space_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "space_id"
    t.text "content"
    t.string "title"
    t.bigint "booking_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_reviews_on_booking_id"
    t.index ["space_id"], name: "index_reviews_on_space_id"
  end

  create_table "spaces", force: :cascade do |t|
    t.bigint "user_id"
    t.string "capacity"
    t.integer "price_per_hour"
    t.text "amenities"
    t.text "description"
    t.string "name"
    t.string "space_type"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.float "latitude"
    t.float "longitude"
    t.index ["user_id"], name: "index_spaces_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "photo"
    t.boolean "host", default: false
    t.string "avatar"
    t.string "city"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "spaces"
  add_foreign_key "bookings", "users"
  add_foreign_key "pictures", "spaces"
  add_foreign_key "reviews", "bookings"
  add_foreign_key "reviews", "spaces"
  add_foreign_key "spaces", "users"
end
