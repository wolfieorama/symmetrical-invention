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

ActiveRecord::Schema.define(version: 20160404122351) do

  create_table "employees", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "manager_id"
    t.integer  "team_id"
    t.integer  "sec_team_id"
    t.integer  "ter_team_id"
  end

  create_table "teammemberships", force: :cascade do |t|
    t.integer  "employee_id"
    t.integer  "team_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "teammemberships", ["employee_id"], name: "index_teammemberships_on_employee_id"
  add_index "teammemberships", ["team_id"], name: "index_teammemberships_on_team_id"

  create_table "teams", force: :cascade do |t|
    t.string   "team_name"
    t.integer  "sec_team_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "ter_team_id"
    t.integer  "manager_id"
  end

  add_index "teams", ["sec_team_id"], name: "index_teams_on_sec_team_id"

end
