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

ActiveRecord::Schema.define(version: 20130814200038) do

  create_table "agendas", force: true do |t|
    t.integer  "order"
    t.integer  "item_id"
    t.integer  "meeting_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "agendas", ["item_id"], name: "index_agendas_on_item_id", using: :btree
  add_index "agendas", ["meeting_id"], name: "index_agendas_on_meeting_id", using: :btree

  create_table "attendees", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "status",     default: 1
    t.integer  "meeting_id"
    t.integer  "user_id"
  end

  add_index "attendees", ["meeting_id"], name: "index_attendees_on_meeting_id", using: :btree
  add_index "attendees", ["user_id"], name: "index_attendees_on_user_id", using: :btree

  create_table "comments", force: true do |t|
    t.text     "body"
    t.integer  "item_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["item_id"], name: "index_comments_on_item_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "items", force: true do |t|
    t.text     "body"
    t.integer  "duration",   default: 15
    t.boolean  "hidden",     default: false
    t.text     "teaser"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "items", ["user_id"], name: "index_items_on_user_id", using: :btree

  create_table "meetings", force: true do |t|
    t.string   "title"
    t.datetime "meets_at"
    t.integer  "duration",   default: 60
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "location"
  end

  add_index "meetings", ["user_id"], name: "index_meetings_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email_address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
