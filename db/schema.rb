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

ActiveRecord::Schema.define(version: 0) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "event_name"
    t.integer  "swimmers_in"
    t.float    "best_time"
  end

  create_table "runs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "event_id"
    t.integer  "team_id"
    t.integer  "swimmer_id"
    t.float    "run_time"
    t.integer  "run_place"
  end

  create_table "swimmers", force: :cascade do |t|
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "team_id"
    t.string   "swimmer_name"
    t.string   "dob"
    t.integer  "payment_status"
    t.string   "swimmer_gender"
    t.string   "swimmer_events"
  end

  create_table "teams", force: :cascade do |t|
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "conference"
    t.string   "swimmer_count"
    t.string   "team_name"
    t.integer  "team_member_count"
  end

end
