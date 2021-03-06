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

ActiveRecord::Schema.define(version: 2019_02_05_115811) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "flights", force: :cascade do |t|
    t.integer "f_no"
    t.text "date"
    t.text "origin"
    t.text "destination"
    t.bigint "plane_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["f_no"], name: "index_flights_on_f_no", unique: true
    t.index ["plane_id"], name: "index_flights_on_plane_id"
  end

  create_table "planes", force: :cascade do |t|
    t.text "name"
    t.integer "row"
    t.integer "col"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.text "seat"
    t.bigint "flight_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flight_id"], name: "index_reservations_on_flight_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "flights", "planes"
  add_foreign_key "reservations", "flights"
  add_foreign_key "reservations", "users"
end
