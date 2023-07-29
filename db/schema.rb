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

ActiveRecord::Schema[7.0].define(version: 2023_03_30_001002) do
  create_table "pools", force: :cascade do |t|
    t.integer "quantity", default: 500, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "pulses_count", default: 0, null: false
  end

  create_table "pulses", force: :cascade do |t|
    t.integer "pool_id", null: false
    t.string "http_method", limit: 20
    t.string "headers"
    t.string "query_string"
    t.string "content_type"
    t.integer "size", default: 0
    t.string "form_params"
    t.text "body"
    t.string "ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pool_id"], name: "index_pulses_on_pool_id"
  end

  add_foreign_key "pulses", "pools"
end
