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

ActiveRecord::Schema.define(version: 20141115004600) do

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

  add_index "stations", ["workout_id"], name: "index_stations_on_workout_id"

  create_table "stations_exercises", force: true do |t|
    t.integer "stations_id"
    t.integer "exercises_id"
  end

  add_index "stations_exercises", ["stations_id", "exercises_id"], name: "index_stations_exercises_on_stations_id_and_exercises_id"

  create_table "workouts", force: true do |t|
    t.string   "title"
    t.string   "park_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
