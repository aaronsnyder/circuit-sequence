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

ActiveRecord::Schema.define(version: 20150127041711) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "exercise_instances", force: true do |t|
    t.integer  "station_id"
    t.integer  "exercise_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "exercise_instances", ["exercise_id"], name: "index_exercise_instances_on_exercise_id", using: :btree
  add_index "exercise_instances", ["station_id", "exercise_id"], name: "index_exercise_instances_on_station_id_and_exercise_id", unique: true, using: :btree
  add_index "exercise_instances", ["station_id"], name: "index_exercise_instances_on_station_id", using: :btree

  create_table "exercises", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stations", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.integer  "workout_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stations", ["workout_id"], name: "index_stations_on_workout_id", using: :btree

  create_table "workouts", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
