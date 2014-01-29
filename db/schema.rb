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

ActiveRecord::Schema.define(version: 20140129120447) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "athletics", force: true do |t|
    t.string   "name"
    t.string   "fees"
    t.text     "rules"
    t.string   "event_head_name"
    t.string   "event_head_email"
    t.string   "event_head_mobile"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.string   "name"
    t.string   "fees"
    t.text     "rules"
    t.string   "event_head_name"
    t.string   "event_head_email"
    t.string   "event_head_mobile"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "registrations", force: true do |t|
    t.string   "name"
    t.string   "mob_no"
    t.string   "email"
    t.string   "branch"
    t.string   "year"
    t.string   "college"
    t.string   "event"
    t.text     "members"
    t.string   "staff_name"
    t.string   "staff_contact"
    t.string   "staff_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "secretories", force: true do |t|
    t.string   "name"
    t.string   "mob_no"
    t.string   "designation"
    t.string   "img_src"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "updates", force: true do |t|
    t.string   "heading"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
