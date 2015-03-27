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

ActiveRecord::Schema.define(version: 20150327022103) do

  create_table "policy_categories", force: true do |t|
    t.string   "policy_category"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "active_category"
  end

  create_table "policy_ideas", force: true do |t|
    t.string   "title"
    t.string   "author"
    t.text     "body"
    t.string   "imglink1"
    t.string   "imglink2"
    t.string   "caption1"
    t.string   "caption2"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "votes_count"
    t.datetime "suspended_at"
    t.string   "suspension_status"
    t.integer  "policy_category_id"
  end

  add_index "policy_ideas", ["policy_category_id"], name: "index_policy_ideas_on_policy_category_id"
  add_index "policy_ideas", ["user_id"], name: "index_policy_ideas_on_user_id"

  create_table "profiles", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "url"
    t.string   "location"
    t.string   "username"
    t.integer  "user_id"
    t.string   "image_url"
    t.datetime "suspended_at"
    t.string   "suspension_status"
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id"

  create_table "users", force: true do |t|
    t.text     "logon"
    t.text     "email"
    t.text     "profile"
    t.text     "display_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
