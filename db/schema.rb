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

ActiveRecord::Schema[7.0].define(version: 2023_07_23_131743) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "coaches", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "phone"
    t.string "address"
    t.string "city"
    t.string "country"
    t.string "avatar"
    t.date "dob"
    t.string "experience"
    t.string "status"
    t.string "groups"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_coaches_on_email", unique: true
    t.index ["reset_password_token"], name: "index_coaches_on_reset_password_token", unique: true
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name", limit: 100, null: false
    t.string "email", limit: 100, null: false
    t.string "phone", limit: 20, null: false
    t.string "message", limit: 1000, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "individual_sessions", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "coach_id", null: false
    t.date "session_date"
    t.time "session_time"
    t.integer "duration"
    t.string "location"
    t.string "status"
    t.string "booking_type"
    t.string "payment_status"
    t.string "payment_method"
    t.string "payment_id"
    t.string "payment_amount"
    t.string "payment_currency"
    t.string "payment_description"
    t.string "client_full_name"
    t.string "client_email"
    t.string "client_phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coach_id"], name: "index_individual_sessions_on_coach_id"
    t.index ["user_id"], name: "index_individual_sessions_on_user_id"
  end

  create_table "programmes", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "type"
    t.string "duration"
    t.string "level"
    t.string "price"
    t.string "jour"
    t.string "heure"
    t.string "groupe"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questionnaire_seniors", force: :cascade do |t|
    t.text "value", default: [], array: true
    t.text "discipline", default: [], array: true
    t.string "satisfaction"
    t.string "qualite"
    t.string "gym_commentaire"
    t.string "tendance"
    t.string "suggestion"
    t.string "securite"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questionnaires", force: :cascade do |t|
    t.text "value", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "satisfaction"
    t.string "qualite"
    t.string "reason"
    t.string "attention"
    t.string "attention_commentaire"
    t.string "tendance"
    t.string "suggestion"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.boolean "admin", default: false
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "phone"
    t.string "address"
    t.string "city"
    t.string "country"
    t.string "postal_code"
    t.string "avatar"
    t.date "dob"
    t.string "group"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "individual_sessions", "coaches"
  add_foreign_key "individual_sessions", "users"
end
