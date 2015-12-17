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

ActiveRecord::Schema.define(version: 20151217015312) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "meetings", force: :cascade do |t|
    t.string   "name"
    t.datetime "start_time"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "location"
    t.string   "wave_height"
    t.string   "conditions"
    t.string   "description"
    t.integer  "user_id"
    t.string   "localTimestamp"
    t.string   "minBreakingHeight"
    t.string   "maxBreakingHeight"
    t.string   "primaryHeight"
    t.string   "primaryPeriod"
    t.string   "primaryDirection"
    t.string   "primaryCompass"
    t.string   "secondaryHeight"
    t.string   "secondaryPeriod"
    t.string   "secondaryDirection"
    t.string   "secondaryCompass"
    t.string   "windSpeed"
    t.string   "windDirection"
    t.string   "windCompass"
    t.string   "temperature"
    t.string   "notes"
    t.integer  "surf_duration"
    t.string   "board"
  end

  create_table "reports", force: :cascade do |t|
    t.string   "minBreakingHeight"
    t.string   "maxBreakingHeight"
    t.string   "primaryHeight"
    t.string   "primaryPeriod"
    t.string   "primaryDirection"
    t.string   "primaryCompass"
    t.string   "secondaryHeight"
    t.string   "secondaryPeriod"
    t.string   "secondaryDirection"
    t.string   "secondaryCompass"
    t.string   "windSpeed"
    t.string   "windDirection"
    t.string   "windCompass"
    t.string   "temperature"
    t.string   "localTimestamp"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
