# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150301160318) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artist_media", force: true do |t|
    t.integer  "artist_id"
    t.integer  "medium_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "artist_media", ["artist_id"], name: "index_artist_media_on_artist_id", using: :btree
  add_index "artist_media", ["medium_id"], name: "index_artist_media_on_medium_id", using: :btree

  create_table "artists", force: true do |t|
    t.string   "primary_identifier"
    t.string   "secondary_identifier"
    t.text     "artist_statement"
    t.text     "artist_bio"
    t.string   "image"
    t.string   "website"
    t.string   "twitter"
    t.string   "facebook"
    t.string   "studio_address"
    t.string   "studio_city"
    t.string   "studio_state"
    t.string   "studio_zip"
    t.boolean  "active"
    t.boolean  "studio_pickup"
    t.boolean  "local_delivery"
    t.text     "delivery_instructions"
    t.integer  "type_of_product_id"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "artists", ["type_of_product_id"], name: "index_artists_on_type_of_product_id", using: :btree

  create_table "categories", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "delivery_timings", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "galleries", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "artist_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "galleries", ["artist_id"], name: "index_galleries_on_artist_id", using: :btree

  create_table "gallery_items", force: true do |t|
    t.integer  "gallery_id"
    t.integer  "item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "gallery_items", ["gallery_id"], name: "index_gallery_items_on_gallery_id", using: :btree
  add_index "gallery_items", ["item_id"], name: "index_gallery_items_on_item_id", using: :btree

  create_table "item_availabilities", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "item_categories", force: true do |t|
    t.integer  "item_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "item_categories", ["category_id"], name: "index_item_categories_on_category_id", using: :btree
  add_index "item_categories", ["item_id"], name: "index_item_categories_on_item_id", using: :btree

  create_table "item_media", force: true do |t|
    t.integer  "item_id"
    t.integer  "medium_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "item_media", ["item_id"], name: "index_item_media_on_item_id", using: :btree
  add_index "item_media", ["medium_id"], name: "index_item_media_on_medium_id", using: :btree

  create_table "items", force: true do |t|
    t.string   "name"
    t.integer  "artist_id"
    t.text     "description"
    t.string   "price"
    t.integer  "item_availability_id"
    t.integer  "quantity"
    t.boolean  "special_order"
    t.string   "turn_around_time"
    t.integer  "production_category_id"
    t.integer  "delivery_timing_id"
    t.integer  "shipping_instruction_id"
    t.text     "notes"
    t.string   "image_1"
    t.string   "image_2"
    t.string   "image_3"
    t.string   "image_4"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "items", ["artist_id"], name: "index_items_on_artist_id", using: :btree
  add_index "items", ["delivery_timing_id"], name: "index_items_on_delivery_timing_id", using: :btree
  add_index "items", ["item_availability_id"], name: "index_items_on_item_availability_id", using: :btree
  add_index "items", ["production_category_id"], name: "index_items_on_production_category_id", using: :btree
  add_index "items", ["shipping_instruction_id"], name: "index_items_on_shipping_instruction_id", using: :btree

  create_table "media", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "production_categories", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "registries", force: true do |t|
    t.string   "type_of_event"
    t.string   "image"
    t.date     "event_date"
    t.date     "registry_close_date"
    t.text     "story"
    t.string   "event_website"
    t.text     "delivery_instructions"
    t.text     "notes"
    t.boolean  "publish"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "registries", ["user_id"], name: "index_registries_on_user_id", using: :btree

  create_table "registry_items", force: true do |t|
    t.integer  "registry_id"
    t.integer  "item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "registry_items", ["item_id"], name: "index_registry_items_on_item_id", using: :btree
  add_index "registry_items", ["registry_id"], name: "index_registry_items_on_registry_id", using: :btree

  create_table "shipping_instructions", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "type_of_products", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "first_name_2"
    t.string   "last_name_2"
    t.string   "username"
    t.string   "email"
    t.string   "email_2"
    t.string   "phone"
    t.string   "phone_2"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
