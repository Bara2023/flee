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

ActiveRecord::Schema[7.1].define(version: 2024_06_04_095539) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attendances", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "travel_id", null: false
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["travel_id"], name: "index_attendances_on_travel_id"
    t.index ["user_id"], name: "index_attendances_on_user_id"
  end

  create_table "liked_travels", force: :cascade do |t|
    t.bigint "search_id", null: false
    t.bigint "travel_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["search_id"], name: "index_liked_travels_on_search_id"
    t.index ["travel_id"], name: "index_liked_travels_on_travel_id"
  end

  create_table "searches", force: :cascade do |t|
    t.string "airport_start"
    t.integer "budget_max"
    t.integer "lasting"
    t.string "destination"
    t.string "month"
    t.string "mood"
    t.string "age"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_searches_on_user_id"
  end

  create_table "travels", force: :cascade do |t|
    t.string "airport_start"
    t.integer "budget_max"
    t.integer "lasting"
    t.string "destination"
    t.date "start_date"
    t.string "mood"
    t.string "age"
    t.boolean "status"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_travels_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "age"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "attendances", "travels"
  add_foreign_key "attendances", "users"
  add_foreign_key "liked_travels", "searches"
  add_foreign_key "liked_travels", "travels"
  add_foreign_key "searches", "users"
  add_foreign_key "travels", "users"
end
