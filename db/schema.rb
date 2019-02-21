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

ActiveRecord::Schema.define(version: 2019_02_21_164321) do

  create_table "announcement_audios", force: :cascade do |t|
    t.integer "announcementtext_id"
    t.integer "size", null: false
    t.integer "length", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["announcementtext_id"], name: "index_announcement_audios_on_announcementtext_id"
  end

  create_table "announcement_texts", force: :cascade do |t|
    t.integer "announcement_id"
    t.text "text", null: false
    t.integer "language_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["announcement_id"], name: "index_announcement_texts_on_announcement_id"
    t.index ["language_id"], name: "index_announcement_texts_on_language_id"
  end

  create_table "announcements", force: :cascade do |t|
    t.text "type"
    t.text "priority", default: "LOW", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.text "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "content_audios", force: :cascade do |t|
    t.integer "content_id"
    t.integer "size"
    t.integer "length"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["content_id"], name: "index_content_audios_on_content_id"
  end

  create_table "content_lists", force: :cascade do |t|
    t.text "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contents", force: :cascade do |t|
    t.integer "category_id"
    t.integer "daisyformat_id"
    t.text "title", null: false
    t.decimal "date", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_contents_on_category_id"
    t.index ["daisyformat_id"], name: "index_contents_on_daisyformat_id"
  end

  create_table "daisy_formats", force: :cascade do |t|
    t.text "format", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "languages", force: :cascade do |t|
    t.text "lang", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.text "state", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_announcements", force: :cascade do |t|
    t.integer "user_id"
    t.integer "announcement_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["announcement_id"], name: "index_user_announcements_on_announcement_id"
    t.index ["user_id"], name: "index_user_announcements_on_user_id"
  end

  create_table "user_bookmarks", force: :cascade do |t|
    t.integer "user_id"
    t.integer "content_id"
    t.text "bookmarkset", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["content_id"], name: "index_user_bookmarks_on_content_id"
    t.index ["user_id"], name: "index_user_bookmarks_on_user_id"
  end

  create_table "user_contents", force: :cascade do |t|
    t.integer "user_id"
    t.integer "content_id"
    t.integer "contentlist_id"
    t.integer "contentlist_2_id", default: 3
    t.integer "return", null: false
    t.integer "returned", default: 0, null: false
    t.decimal "return_at"
    t.integer "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["content_id"], name: "index_user_contents_on_content_id"
    t.index ["contentlist_2_id"], name: "index_user_contents_on_contentlist_2_id"
    t.index ["contentlist_id"], name: "index_user_contents_on_contentlist_id"
    t.index ["state_id"], name: "index_user_contents_on_state_id"
    t.index ["user_id"], name: "index_user_contents_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "username"
    t.text "password"
    t.integer "terms_accepted", default: 0, null: false
    t.integer "log", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
