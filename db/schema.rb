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

ActiveRecord::Schema.define(version: 2021_03_14_132747) do

  create_table "examinations", force: :cascade do |t|
    t.integer "user_id"
    t.integer "hospital_id"
    t.boolean "result"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "doctor"
    t.date "date"
    t.string "speciment"
  end

  create_table "health_centers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name", null: false
    t.string "postcode", null: false
    t.string "address_city", null: false
    t.string "address_street", null: false
    t.string "address_building", null: false
    t.string "phone_number", null: false
    t.string "corporate_number", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "holiday"
    t.index ["email"], name: "index_health_centers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_health_centers_on_reset_password_token", unique: true
  end

  create_table "hospitals", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "postcode"
    t.string "address_city"
    t.string "address_street"
    t.string "address_building"
    t.string "phone_number"
    t.text "holiday"
    t.text "name"
    t.index ["email"], name: "index_hospitals_on_email", unique: true
    t.index ["reset_password_token"], name: "index_hospitals_on_reset_password_token", unique: true
  end

  create_table "messages", force: :cascade do |t|
    t.integer "user_id"
    t.integer "health_center_id"
    t.integer "room_id", null: false
    t.text "message", null: false
    t.integer "checked", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_checked"
    t.integer "healthcenter_checked"
    t.integer "from"
    t.decimal "score", precision: 5, scale: 3
  end

  create_table "rooms", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "health_center_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_healths", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "health_center_id"
    t.float "temperature", null: false
    t.text "condition", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "transportation"
    t.boolean "want_examination"
    t.decimal "score", precision: 5, scale: 3
    t.decimal "magnitude"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "last_name", null: false
    t.string "first_name", null: false
    t.string "last_name_kana", null: false
    t.string "first_name_kana", null: false
    t.integer "gender", null: false
    t.integer "age", null: false
    t.string "postcode", null: false
    t.string "address_city", null: false
    t.string "address_street", null: false
    t.string "address_building", null: false
    t.string "phone_number", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_id"
    t.boolean "is_deleted", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
