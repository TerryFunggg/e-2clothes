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

ActiveRecord::Schema.define(version: 2021_03_12_040900) do

  create_table "addresses", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "city_id", null: false
    t.string "street_address", null: false
    t.string "secondary_address", null: false
    t.string "building_address", null: false
    t.string "zip_code", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_addresses_on_city_id"
  end

  create_table "admins", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.integer "premission", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_admins_on_user_id"
  end

  create_table "cart_products", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "product_id", null: false
    t.bigint "cart_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cart_id"], name: "index_cart_products_on_cart_id"
    t.index ["product_id"], name: "index_cart_products_on_product_id"
  end

  create_table "carts", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_carts_on_user_id"
  end

  create_table "categroys", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.boolean "is_active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cities", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "orders", charset: "utf8mb4", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.string "address"
    t.string "city"
    t.string "token"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "cart_id"
    t.index ["cart_id"], name: "index_orders_on_cart_id"
  end

  create_table "product_categroys", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "categroy_id"
    t.bigint "product_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["categroy_id"], name: "index_product_categroys_on_categroy_id"
    t.index ["product_id"], name: "index_product_categroys_on_product_id"
  end

  create_table "products", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "shop_id", null: false
    t.string "name"
    t.string "price"
    t.text "description"
    t.string "quality"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["shop_id"], name: "index_products_on_shop_id"
  end

  create_table "shop_owners", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "shop_id", null: false
    t.integer "apply_state"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["shop_id"], name: "index_shop_owners_on_shop_id"
    t.index ["user_id"], name: "index_shop_owners_on_user_id"
  end

  create_table "shops", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "address_id", null: false
    t.string "logo"
    t.string "title"
    t.text "description"
    t.integer "apply_state", default: 0
    t.boolean "is_active", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["address_id"], name: "index_shops_on_address_id"
  end

  create_table "users", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "address_id"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password"
    t.string "avator"
    t.string "phone"
    t.boolean "is_active", default: true
    t.datetime "last_login"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["address_id"], name: "index_users_on_address_id"
  end

  add_foreign_key "addresses", "cities"
  add_foreign_key "admins", "users"
  add_foreign_key "cart_products", "carts"
  add_foreign_key "cart_products", "products"
  add_foreign_key "carts", "users"
  add_foreign_key "orders", "carts"
  add_foreign_key "product_categroys", "categroys"
  add_foreign_key "product_categroys", "products"
  add_foreign_key "products", "shops"
  add_foreign_key "shop_owners", "shops"
  add_foreign_key "shop_owners", "users"
  add_foreign_key "shops", "addresses"
  add_foreign_key "users", "addresses"
end
