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

ActiveRecord::Schema.define(version: 2021_11_05_152418) do

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
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "actualites", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.string "date"
    t.string "lieu"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.integer "price"
    t.string "statut"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "typearray", default: [], array: true
    t.text "papierarray", default: [], array: true
    t.text "cadrearray", default: [], array: true
    t.text "themearticle"
  end

  create_table "choices", force: :cascade do |t|
    t.string "articleid"
    t.string "typechoice"
    t.integer "totalprice"
    t.string "papier"
    t.string "cadre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "commandes", force: :cascade do |t|
    t.string "statut"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "panier_id"
    t.string "envoi"
    t.string "finished"
    t.string "suivi"
    t.index ["panier_id"], name: "index_commandes_on_panier_id"
  end

  create_table "contents", force: :cascade do |t|
    t.string "typea"
    t.string "typeb"
    t.string "typec"
    t.string "typed"
    t.string "typee"
    t.string "typef"
    t.string "typeg"
    t.string "typeh"
    t.text "typei"
    t.string "typej"
    t.string "typek"
    t.string "typel"
    t.string "typem"
    t.string "typen"
    t.text "typeo"
    t.text "typep"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "typeq"
  end

  create_table "messages", force: :cascade do |t|
    t.string "nom"
    t.string "email"
    t.string "objet"
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "paniers", force: :cascade do |t|
    t.string "statut"
    t.integer "totalprice"
    t.string "typeenvoi"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "profile_id"
    t.text "contenu"
    t.index ["profile_id"], name: "index_paniers_on_profile_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.string "rue"
    t.string "postcode"
    t.string "pays"
    t.string "phone"
    t.string "statut"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.text "ville"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "themes", force: :cascade do |t|
    t.string "nom"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "stripe_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "commandes", "paniers"
  add_foreign_key "paniers", "profiles"
  add_foreign_key "profiles", "users"
end
