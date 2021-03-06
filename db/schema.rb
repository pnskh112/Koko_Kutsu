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

ActiveRecord::Schema.define(version: 2020_01_04_134836) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "name"
    t.string "mail"
    t.string "password"
    t.string "password_confirmation"
    t.string "remember_token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "box_users", force: :cascade do |t|
    t.integer "box_id"
    t.integer "user_id"
    t.string "user_name"
    t.integer "vertical"
    t.integer "side"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "boxes", force: :cascade do |t|
    t.string "name"
    t.integer "max_vertical"
    t.integer "max_side"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name", limit: 191
    t.string "mail", limit: 191
    t.string "password", limit: 191
    t.string "password_digest", limit: 191
    t.string "remember_token", limit: 191
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
