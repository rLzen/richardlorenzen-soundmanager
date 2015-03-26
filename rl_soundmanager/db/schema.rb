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

ActiveRecord::Schema.define(version: 20150326230927) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "collection_lists", force: :cascade do |t|
    t.string   "name"
    t.string   "format"
    t.time     "length"
    t.integer  "size"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "collection_lists", ["user_id"], name: "index_collection_lists_on_user_id", using: :btree

  create_table "lists", force: :cascade do |t|
    t.string   "artist_name"
    t.string   "album_name"
    t.string   "song_name"
    t.string   "format"
    t.time     "length"
    t.integer  "size"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "users_id"
  end

  add_index "lists", ["users_id"], name: "index_lists_on_users_id", using: :btree

  create_table "microposts", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "music_collections", force: :cascade do |t|
    t.string   "name"
    t.string   "format"
    t.time     "length"
    t.integer  "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "music_lists", force: :cascade do |t|
    t.string   "name"
    t.string   "artist"
    t.string   "album"
    t.string   "song"
    t.string   "format"
    t.time     "length"
    t.string   "size"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "users_id"
  end

  add_index "music_lists", ["users_id"], name: "index_music_lists_on_users_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "remember_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  add_foreign_key "collection_lists", "users"
  add_foreign_key "music_lists", "users"
end
