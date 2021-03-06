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

ActiveRecord::Schema.define(version: 2019_11_20_045444) do

  create_table "announcement_audios", force: :cascade do |t|
    t.integer "announcement_text_id"
    t.integer "size", null: false
    t.integer "length", null: false
    t.text "mime_type", null: false
    t.text "audio", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["announcement_text_id"], name: "index_announcement_audios_on_announcement_text_id"
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
    t.text "category"
    t.text "priority", null: false
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
    t.integer "size", null: false
    t.integer "length", null: false
    t.text "mime_type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "audio", null: false
    t.index ["content_id", "audio"], name: "index_content_audios_on_content_id_and_audio", unique: true
    t.index ["content_id"], name: "index_content_audios_on_content_id"
  end

  create_table "content_lists", force: :cascade do |t|
    t.text "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "content_metadata", force: :cascade do |t|
    t.integer "content_id"
    t.text "key", null: false
    t.text "value", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["content_id"], name: "index_content_metadata_on_content_id"
  end

  create_table "content_resources", force: :cascade do |t|
    t.integer "content_id"
    t.text "file_name", null: false
    t.integer "bytes", default: 0, null: false
    t.text "mime_type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "resource", null: false
    t.index ["content_id", "resource"], name: "index_content_resources_on_content_id_and_resource", unique: true
    t.index ["content_id"], name: "index_content_resources_on_content_id"
  end

  create_table "contents", force: :cascade do |t|
    t.integer "category_id"
    t.integer "daisy_format_id"
    t.string "title", limit: 256, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_contents_on_category_id"
    t.index ["daisy_format_id"], name: "index_contents_on_daisy_format_id"
    t.index ["title"], name: "index_contents_on_title", unique: true
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

  create_table "question_audios", force: :cascade do |t|
    t.integer "question_text_id"
    t.integer "size", null: false
    t.integer "length", null: false
    t.text "mime_type", null: false
    t.text "audio", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_text_id"], name: "index_question_audios_on_question_text_id"
  end

  create_table "question_inputs", force: :cascade do |t|
    t.integer "question_id"
    t.integer "allow_multiple_selections"
    t.integer "text_numeric"
    t.integer "text_alphanumeric"
    t.integer "audio"
    t.text "default_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_question_inputs_on_question_id"
  end

  create_table "question_question_texts", force: :cascade do |t|
    t.integer "question_id"
    t.integer "question_text_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_question_question_texts_on_question_id"
    t.index ["question_text_id"], name: "index_question_question_texts_on_question_text_id"
  end

  create_table "question_texts", force: :cascade do |t|
    t.integer "language_id"
    t.text "text", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["language_id"], name: "index_question_texts_on_language_id"
  end

  create_table "question_types", force: :cascade do |t|
    t.text "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.integer "parent_id"
    t.integer "question_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parent_id"], name: "index_questions_on_parent_id"
    t.index ["question_type_id"], name: "index_questions_on_question_type_id"
  end

  create_table "states", force: :cascade do |t|
    t.text "state", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_announcements", force: :cascade do |t|
    t.integer "user_id"
    t.integer "announcement_id"
    t.datetime "read_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["announcement_id"], name: "index_user_announcements_on_announcement_id"
    t.index ["user_id"], name: "index_user_announcements_on_user_id"
  end

  create_table "user_bookmarks", force: :cascade do |t|
    t.integer "user_id"
    t.integer "content_id"
    t.text "bookmark_set", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["content_id"], name: "index_user_bookmarks_on_content_id"
    t.index ["user_id"], name: "index_user_bookmarks_on_user_id"
  end

  create_table "user_contents", force: :cascade do |t|
    t.integer "user_id"
    t.integer "content_id"
    t.integer "content_list_id", default: 1
    t.integer "content_list_v1_id", default: 2
    t.boolean "return", default: false, null: false
    t.boolean "returned", default: false, null: false
    t.datetime "return_at"
    t.integer "state_id", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["content_id"], name: "index_user_contents_on_content_id"
    t.index ["content_list_id"], name: "index_user_contents_on_content_list_id"
    t.index ["content_list_v1_id"], name: "index_user_contents_on_content_list_v1_id"
    t.index ["state_id"], name: "index_user_contents_on_state_id"
    t.index ["user_id", "content_id", "content_list_id"], name: "index_user_contents_on_user_id_content_id_content_list_id", unique: true
    t.index ["user_id", "content_id", "content_list_v1_id"], name: "index_user_contents_on_user_id_content_id_content_list_v1_id", unique: true
    t.index ["user_id"], name: "index_user_contents_on_user_id"
  end

  create_table "user_logs", force: :cascade do |t|
    t.integer "user_id"
    t.text "ip"
    t.text "request"
    t.text "response"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_logs_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "username", null: false
    t.text "password"
    t.boolean "terms_accepted", default: false, null: false
    t.boolean "log", default: false, null: false
    t.boolean "activated", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
