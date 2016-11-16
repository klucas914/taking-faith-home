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

ActiveRecord::Schema.define(version: 20161116092227) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "readings", force: :cascade do |t|
    t.string   "date"
    t.string   "week"
    t.string   "title"
    t.string   "verse"
    t.text     "scripture"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.text     "blessing"
    t.text     "discuss"
    t.text     "prayer"
    t.integer  "weekly_resources_id"
    t.index ["weekly_resources_id"], name: "index_readings_on_weekly_resources_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "weekly_resources", force: :cascade do |t|
    t.text     "creative_response"
    t.text     "memory_verse"
    t.text     "mealtime_prayer"
    t.text     "season_description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_foreign_key "readings", "weekly_resources", column: "weekly_resources_id"
end
