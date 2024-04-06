# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_04_06_113552) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assistances", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "event_id", null: false
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_assistances_on_event_id"
    t.index ["user_id"], name: "index_assistances_on_user_id"
  end

  create_table "bookclubs", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "meeting_location"
    t.integer "max_members"
    t.string "privacy", default: "public"
    t.string "genre"
    t.date "Meeting_schedule"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_bookclubs_on_user_id"
  end

  create_table "books", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "title"
    t.string "author"
    t.string "description"
    t.string "genre"
    t.integer "rating"
    t.string "language"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_books_on_user_id"
  end

  create_table "chatrooms", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "address"
    t.integer "max_assistants"
    t.string "privacy", default: "public"
    t.bigint "user_id", null: false
    t.datetime "date"
    t.datetime "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "matches", force: :cascade do |t|
    t.integer "offerer_id"
    t.integer "receiver_id"
    t.integer "book_offered_id"
    t.integer "book_received_id"
    t.string "status", default: "pending"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "bookclub_id", null: false
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bookclub_id"], name: "index_members_on_bookclub_id"
    t.index ["user_id"], name: "index_members_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "chatroom_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chatroom_id"], name: "index_messages_on_chatroom_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "participants", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "chatroom_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chatroom_id"], name: "index_participants_on_chatroom_id"
    t.index ["user_id"], name: "index_participants_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "reviewer_id"
    t.integer "reviewed_id"
    t.string "comment"
    t.integer "rating"
    t.bigint "match_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["match_id"], name: "index_reviews_on_match_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "assistances", "events"
  add_foreign_key "assistances", "users"
  add_foreign_key "bookclubs", "users"
  add_foreign_key "books", "users"
  add_foreign_key "events", "users"
  add_foreign_key "members", "bookclubs"
  add_foreign_key "members", "users"
  add_foreign_key "messages", "chatrooms"
  add_foreign_key "messages", "users"
  add_foreign_key "participants", "chatrooms"
  add_foreign_key "participants", "users"
  add_foreign_key "reviews", "matches"
end
