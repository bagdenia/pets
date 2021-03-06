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

ActiveRecord::Schema.define(version: 20160721145154) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accepted_pet_kinds", id: false, force: :cascade do |t|
    t.integer "pet_kind_id", null: false
    t.integer "user_id",     null: false
  end

  add_index "accepted_pet_kinds", ["user_id", "pet_kind_id"], name: "index_accepted_pet_kinds _on_user_id_and_pet_kind_id", unique: true, using: :btree

  create_table "messages", force: :cascade do |t|
    t.integer  "sender_id",                        null: false
    t.integer  "receiver_id",                      null: false
    t.text     "body"
    t.boolean  "unread"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.boolean  "sender_deleted",   default: false, null: false
    t.boolean  "receiver_deleted", default: false, null: false
  end

  add_index "messages", ["receiver_id"], name: "index_messages_on_receiver_id", using: :btree
  add_index "messages", ["sender_id"], name: "index_messages_on_sender_id", using: :btree

  create_table "pet_images", force: :cascade do |t|
    t.integer "pet_id",   null: false
    t.string  "image"
    t.string  "title"
    t.boolean "visible"
    t.integer "position"
  end

  add_index "pet_images", ["pet_id"], name: "index_pet_images_on_pet_id", using: :btree

  create_table "pet_kinds", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pets", force: :cascade do |t|
    t.string   "name"
    t.string   "gender"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
    t.integer  "kind_id"
    t.integer  "pet_image_id"
  end

  add_index "pets", ["pet_image_id"], name: "index_pets_on_pet_image_id", using: :btree
  add_index "pets", ["user_id"], name: "index_pets_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "lat"
    t.float    "lng"
    t.string   "uname"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "messages", "users", column: "receiver_id"
  add_foreign_key "messages", "users", column: "sender_id"
  add_foreign_key "pet_images", "pets"
  add_foreign_key "pets", "pet_images"
  add_foreign_key "pets", "pet_kinds", column: "kind_id"
  add_foreign_key "pets", "users"
end
