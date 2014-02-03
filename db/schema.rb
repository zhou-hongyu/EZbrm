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

ActiveRecord::Schema.define(version: 20140203015652) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "competitions", force: true do |t|
    t.text    "name"
    t.text    "category"
    t.integer "store_id"
    t.integer "startup_id"
    t.text    "description"
  end

  add_index "competitions", ["startup_id"], name: "index_competitions_on_startup_id", using: :btree
  add_index "competitions", ["store_id"], name: "index_competitions_on_store_id", using: :btree

  create_table "cooperations", force: true do |t|
    t.text    "name"
    t.text    "category"
    t.integer "store_id"
    t.integer "startup_id"
    t.text    "description"
  end

  add_index "cooperations", ["startup_id"], name: "index_cooperations_on_startup_id", using: :btree
  add_index "cooperations", ["store_id"], name: "index_cooperations_on_store_id", using: :btree

  create_table "startups", force: true do |t|
    t.text    "name"
    t.text    "url"
    t.text    "category"
    t.integer "user_id"
    t.text    "address"
  end

  add_index "startups", ["user_id"], name: "index_startups_on_user_id", using: :btree

  create_table "stores", force: true do |t|
    t.text "name"
    t.text "category"
    t.text "address"
    t.text "url"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
