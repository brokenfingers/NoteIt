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

ActiveRecord::Schema.define(version: 20151227080720) do

  create_table "identities", force: true do |t|
    t.string  "auth_provider", null: false
    t.string  "auth_uid",      null: false
    t.integer "user_id"
  end

  create_table "task_groups", force: true do |t|
    t.string "title",                    null: false
    t.text   "description", default: "", null: false
  end

  create_table "tasks", force: true do |t|
    t.string  "title",                      null: false
    t.text    "description",   default: "", null: false
    t.integer "points"
    t.integer "task_group_id"
  end

  create_table "users", force: true do |t|
    t.string "email",      null: false
    t.string "first_name", null: false
    t.string "last_name",  null: false
  end

end
