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

ActiveRecord::Schema.define(version: 2021_12_20_182029) do

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.text "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_items_on_user_id"
  end

  create_table "notes", force: :cascade do |t|
    t.string "title"
    t.text "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "noteable_type", null: false
    t.integer "noteable_id", null: false
    t.integer "user_id", null: false
    t.index ["noteable_type", "noteable_id"], name: "index_notes_on_noteable"
    t.index ["user_id"], name: "index_notes_on_user_id"
  end

  create_table "rental_periods", force: :cascade do |t|
    t.date "from"
    t.date "to"
    t.date "returned_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_from_id"
    t.integer "user_to_id"
    t.integer "item_id", null: false
    t.index ["item_id"], name: "index_rental_periods_on_item_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "items", "users"
  add_foreign_key "notes", "users"
  add_foreign_key "rental_periods", "items"
end
