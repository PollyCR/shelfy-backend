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

ActiveRecord::Schema.define(version: 2019_10_31_082913) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_ingredients", force: :cascade do |t|
    t.string "name"
    t.bigint "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_active_ingredients_on_product_id"
  end

  create_table "brands", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "evening_routine_products", force: :cascade do |t|
    t.bigint "evening_routine_id", null: false
    t.bigint "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["evening_routine_id"], name: "index_evening_routine_products_on_evening_routine_id"
    t.index ["product_id"], name: "index_evening_routine_products_on_product_id"
  end

  create_table "evening_routines", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_evening_routines_on_user_id"
  end

  create_table "morning_routine_products", force: :cascade do |t|
    t.bigint "morning_routine_id", null: false
    t.bigint "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["morning_routine_id"], name: "index_morning_routine_products_on_morning_routine_id"
    t.index ["product_id"], name: "index_morning_routine_products_on_product_id"
  end

  create_table "morning_routines", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_morning_routines_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.bigint "brand_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["brand_id"], name: "index_products_on_brand_id"
  end

  create_table "treatment_routine_products", force: :cascade do |t|
    t.bigint "treatment_routine_id", null: false
    t.bigint "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_treatment_routine_products_on_product_id"
    t.index ["treatment_routine_id"], name: "index_treatment_routine_products_on_treatment_routine_id"
  end

  create_table "treatment_routines", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_treatment_routines_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "display_name"
    t.string "email_address"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "active_ingredients", "products"
  add_foreign_key "evening_routine_products", "evening_routines"
  add_foreign_key "evening_routine_products", "products"
  add_foreign_key "evening_routines", "users"
  add_foreign_key "morning_routine_products", "morning_routines"
  add_foreign_key "morning_routine_products", "products"
  add_foreign_key "morning_routines", "users"
  add_foreign_key "products", "brands"
  add_foreign_key "treatment_routine_products", "products"
  add_foreign_key "treatment_routine_products", "treatment_routines"
  add_foreign_key "treatment_routines", "users"
end
