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

ActiveRecord::Schema.define(version: 20150316184350) do

  create_table "apiv1_appointments", force: :cascade do |t|
    t.string   "permalink",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.datetime "deleted_at"
  end

  create_table "apiv1_cameras", force: :cascade do |t|
    t.string   "permalink",   limit: 255
    t.string   "camera_name", limit: 255
    t.string   "mac_address", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "apiv1_docks", force: :cascade do |t|
    t.string   "dock_number", limit: 255
    t.string   "status",      limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "apiv1_inventories", force: :cascade do |t|
    t.string   "material",    limit: 255
    t.string   "cell_name",   limit: 255,   null: false
    t.text     "notes",       limit: 65535
    t.datetime "arrived_at"
    t.datetime "departed_at"
    t.datetime "deleted_at"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "apiv1_tiles", force: :cascade do |t|
    t.string   "tile_type",  limit: 255
    t.string   "tile_name",  limit: 255
    t.string   "status",     limit: 255
    t.integer  "x",          limit: 4
    t.integer  "y",          limit: 4
    t.integer  "z",          limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.datetime "deleted_at"
  end

  create_table "apiv1_users", force: :cascade do |t|
    t.string   "email",                           limit: 255, null: false
    t.string   "crypted_password",                limit: 255
    t.string   "salt",                            limit: 255
    t.string   "role",                            limit: 255
    t.string   "username",                        limit: 255
    t.string   "permalink",                       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.string   "remember_me_token",               limit: 255
    t.datetime "remember_me_token_expires_at"
    t.string   "reset_password_token",            limit: 255
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
  end

  add_index "apiv1_users", ["email"], name: "index_apiv1_users_on_email", unique: true, using: :btree
  add_index "apiv1_users", ["remember_me_token"], name: "index_apiv1_users_on_remember_me_token", using: :btree
  add_index "apiv1_users", ["reset_password_token"], name: "index_apiv1_users_on_reset_password_token", using: :btree

  create_table "apiv1_weightickets", force: :cascade do |t|
    t.string   "appointment_number", limit: 255
    t.string   "license_plate",      limit: 255
    t.string   "target_dock",        limit: 255
    t.decimal  "pounds",                           precision: 15, scale: 2
    t.string   "issuer_id",          limit: 255
    t.text     "notes",              limit: 65535
    t.datetime "created_at",                                                null: false
    t.datetime "updated_at",                                                null: false
  end

end
