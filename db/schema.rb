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

ActiveRecord::Schema[7.1].define(version: 2025_12_20_173521) do
  create_table "food_items", force: :cascade do |t|
    t.integer "service_id", null: false
    t.string "name", null: false
    t.decimal "serving_size", precision: 8, scale: 2
    t.string "serving_unit"
    t.integer "calories"
    t.integer "calories_from_fat"
    t.decimal "protein_g", precision: 6, scale: 2
    t.decimal "carbs_g", precision: 6, scale: 2
    t.decimal "fat_g", precision: 6, scale: 2
    t.decimal "saturated_fat_g", precision: 6, scale: 2
    t.decimal "fiber_g", precision: 6, scale: 2
    t.decimal "sugar_g", precision: 6, scale: 2
    t.integer "cholesterol_mg"
    t.integer "sodium_mg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["service_id", "name"], name: "index_food_items_on_service_id_and_name", unique: true
    t.index ["service_id"], name: "index_food_items_on_service_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "food_items", "services"
end
