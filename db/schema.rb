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

ActiveRecord::Schema.define(version: 20150629050158) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beer_supplies", force: true do |t|
    t.integer  "beer_id"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "beers", force: true do |t|
    t.string   "beer_name"
    t.string   "beer_style"
    t.text     "beer_description"
    t.integer  "beer_ibu"
    t.float    "beer_abv"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "brewery_id"
    t.integer  "event_id"
  end

  add_index "beers", ["brewery_id"], name: "index_beers_on_brewery_id", using: :btree
  add_index "beers", ["event_id"], name: "index_beers_on_event_id", using: :btree

  create_table "breweries", force: true do |t|
    t.string   "brewery_name"
    t.string   "brewery_address"
    t.string   "brewery_city"
    t.string   "brewery_state"
    t.string   "brewery_zip"
    t.string   "brewery_country"
    t.text     "brewery_description"
    t.string   "brewery_website"
    t.string   "brewery_twitter"
    t.string   "brewery_facebook"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.string   "event_name"
    t.string   "event_loc_name"
    t.string   "event_loc_address"
    t.string   "event_loc_city"
    t.string   "event_loc_state"
    t.string   "event_loc_zip"
    t.string   "event_loc_country"
    t.string   "event_website"
    t.date     "event_start_date"
    t.date     "event_end_date"
    t.text     "event_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quotes", force: true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
