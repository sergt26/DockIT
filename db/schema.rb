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

ActiveRecord::Schema.define(version: 20170627140106) do

  create_table "events", force: :cascade do |t|
    t.string "source"
    t.string "source_id"
    t.integer "user_id"
    t.text "description"
    t.text "photo"
    t.string "date"
    t.string "price"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.integer "address"
    t.string "calendar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitud"
    t.float "longitude"
    t.string "provider"
    t.string "uid"
    t.string "refresh_token"
    t.string "access_token"
    t.string "city"
    t.string "first_name"
    t.string "last_name"
  end

end
