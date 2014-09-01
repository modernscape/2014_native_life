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

ActiveRecord::Schema.define(version: 20140901102430) do

  create_table "actions", force: true do |t|
    t.datetime "achievement_date"
    t.string   "title"
    t.integer  "achieved_percent"
    t.integer  "want_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "actions", ["want_id"], name: "index_actions_on_want_id"

  create_table "articles", force: true do |t|
    t.string   "title"
    t.integer  "want_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "articles", ["want_id"], name: "index_articles_on_want_id"

  create_table "merits", force: true do |t|
    t.string   "title"
    t.integer  "want_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "merits", ["want_id"], name: "index_merits_on_want_id"

  create_table "steps", force: true do |t|
    t.string   "title"
    t.boolean  "done"
    t.integer  "action_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "steps", ["action_id"], name: "index_steps_on_action_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "wants", force: true do |t|
    t.integer  "aim1"
    t.integer  "aim2"
    t.binary   "photo1"
    t.binary   "photo2"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "wants", ["user_id"], name: "index_wants_on_user_id"

  create_table "words", force: true do |t|
    t.string   "title"
    t.integer  "want_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "words", ["want_id"], name: "index_words_on_want_id"

end
