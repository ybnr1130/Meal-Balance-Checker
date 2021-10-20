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

ActiveRecord::Schema.define(version: 2021_10_20_041235) do

  create_table "contacts", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "object", null: false
    t.text "body", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foods", force: :cascade do |t|
    t.string "name", null: false
    t.string "protain", null: false
    t.string "fat", null: false
    t.string "carbon", null: false
    t.string "weight", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "recipe_id"
  end

  create_table "menu_foods", force: :cascade do |t|
    t.integer "menu_id", null: false
    t.integer "food_id", null: false
    t.string "weight", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menus", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.integer "sum_protain"
    t.integer "sum_fat"
    t.integer "sum_carbon"
    t.integer "sum_calory"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "favorite_id"
    t.string "account_name"
    t.string "height"
    t.string "weight"
    t.string "basal_metabolism"
    t.string "target"
    t.string "term"
    t.boolean "status"
    t.integer "reason"
    t.text "reason_detail"
    t.boolean "is_deleted", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
