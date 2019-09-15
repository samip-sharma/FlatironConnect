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

ActiveRecord::Schema.define(version: 2019_09_15_184923) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blogs", force: :cascade do |t|
    t.string "title"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_blogs_on_user_id"
  end

  create_table "follows", force: :cascade do |t|
    t.integer "follower_id"
    t.integer "followee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "global_messages", force: :cascade do |t|
    t.string "text"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_global_messages_on_user_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mod_events", force: :cascade do |t|
    t.string "start"
    t.string "end"
    t.string "title"
    t.bigint "mod_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "allday", default: false
    t.index ["mod_id"], name: "index_mod_events_on_mod_id"
    t.index ["user_id"], name: "index_mod_events_on_user_id"
  end

  create_table "mod_tweets", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "mod_id"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mod_id"], name: "index_mod_tweets_on_mod_id"
    t.index ["user_id"], name: "index_mod_tweets_on_user_id"
  end

  create_table "mods", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tokens", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tweets", force: :cascade do |t|
    t.string "content"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_tweets_on_user_id"
  end

  create_table "two_users_chats", force: :cascade do |t|
    t.bigint "follow_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["follow_id"], name: "index_two_users_chats_on_follow_id"
  end

  create_table "two_users_messages", force: :cascade do |t|
    t.bigint "two_users_chat_id"
    t.string "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "sender"
    t.index ["two_users_chat_id"], name: "index_two_users_messages_on_two_users_chat_id"
  end

  create_table "user_images", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["image_id"], name: "index_user_images_on_image_id"
    t.index ["user_id"], name: "index_user_images_on_user_id"
  end

  create_table "user_mods", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "mod_id"
    t.boolean "accepted", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mod_id"], name: "index_user_mods_on_mod_id"
    t.index ["user_id"], name: "index_user_mods_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.string "user_name"
    t.boolean "active_user"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.boolean "working", default: false
    t.string "working_at", default: "Student"
  end

  add_foreign_key "blogs", "users"
  add_foreign_key "global_messages", "users"
  add_foreign_key "mod_events", "mods"
  add_foreign_key "mod_events", "users"
  add_foreign_key "mod_tweets", "mods"
  add_foreign_key "mod_tweets", "users"
  add_foreign_key "tweets", "users"
  add_foreign_key "two_users_chats", "follows"
  add_foreign_key "two_users_messages", "two_users_chats"
  add_foreign_key "user_images", "images"
  add_foreign_key "user_images", "users"
  add_foreign_key "user_mods", "mods"
  add_foreign_key "user_mods", "users"
end
