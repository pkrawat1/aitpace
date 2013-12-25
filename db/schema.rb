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

ActiveRecord::Schema.define(version: 20131225045403) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: true do |t|
    t.text     "message"
    t.integer  "user_id"
    t.integer  "todo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["todo_id"], name: "index_comments_on_todo_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "events", force: true do |t|
    t.string   "name"
    t.string   "fees"
    t.text     "rules"
    t.integer  "head_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events", ["head_id"], name: "index_events_on_head_id", using: :btree

  create_table "heads", force: true do |t|
    t.string   "name"
    t.integer  "phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.integer  "todos_count", default: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "projects", ["user_id"], name: "index_projects_on_user_id", using: :btree

  create_table "registrations", force: true do |t|
    t.string   "name"
    t.integer  "mob_no"
    t.string   "email"
    t.string   "branch"
    t.string   "year"
    t.string   "college"
    t.integer  "event_id"
    t.text     "members"
    t.string   "staff_name"
    t.integer  "staff_contact"
    t.string   "staff_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "registrations", ["event_id"], name: "index_registrations_on_event_id", using: :btree

  create_table "todos", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "user_id"
    t.integer  "project_id"
    t.integer  "comments_count", default: 0,     null: false
    t.boolean  "complete",       default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "todos", ["complete"], name: "index_todos_on_complete", using: :btree
  add_index "todos", ["project_id"], name: "index_todos_on_project_id", using: :btree
  add_index "todos", ["user_id"], name: "index_todos_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
