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

ActiveRecord::Schema[7.0].define(version: 2024_10_12_070704) do
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

  create_table "animal_types", force: :cascade do |t|
    t.string "name"
    t.string "icon", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animals", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.integer "age_unit"
    t.integer "animal_types_id", null: false
    t.integer "status"
    t.integer "size"
    t.string "about"
    t.integer "vaccines_id", null: false
    t.string "medication"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["animal_types_id"], name: "index_animals_on_animal_types_id"
    t.index ["vaccines_id"], name: "index_animals_on_vaccines_id"
  end

  create_table "social_types", force: :cascade do |t|
    t.string "name"
    t.string "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "socials", force: :cascade do |t|
    t.integer "social_types_id", null: false
    t.string "user"
    t.string "url", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["social_types_id"], name: "index_socials_on_social_types_id"
  end

  create_table "sponsors", force: :cascade do |t|
    t.string "name"
    t.string "about"
    t.string "url", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "submissions", force: :cascade do |t|
    t.string "name"
    t.string "contact"
    t.integer "animals_id", null: false
    t.string "message"
    t.integer "status", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["animals_id"], name: "index_submissions_on_animals_id"
  end

  create_table "vaccines", force: :cascade do |t|
    t.string "name"
    t.integer "current_dose"
    t.integer "total_dose"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "animals", "animal_types", column: "animal_types_id"
  add_foreign_key "animals", "vaccines", column: "vaccines_id"
  add_foreign_key "socials", "social_types", column: "social_types_id"
  add_foreign_key "submissions", "animals", column: "animals_id"
end
