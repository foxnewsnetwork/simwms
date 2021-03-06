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

ActiveRecord::Schema.define(version: 20150607002443) do

  create_table "apiv1_appointments", force: :cascade do |t|
    t.string   "permalink",            limit: 255
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.datetime "deleted_at"
    t.string   "material_description", limit: 255
    t.string   "material_permalink",   limit: 255
    t.string   "company",              limit: 255
    t.string   "company_permalink",    limit: 255
    t.text     "notes",                limit: 65535
    t.datetime "fulfilled_at"
    t.datetime "cancelled_at"
    t.datetime "expected_at"
    t.datetime "exploded_at"
    t.string   "fire_id",              limit: 255
  end

  create_table "apiv1_batches", force: :cascade do |t|
    t.integer  "warehouse_id",   limit: 4
    t.integer  "weighticket_id", limit: 4
    t.string   "appointment_id", limit: 255
    t.string   "entry_dock_id",  limit: 255
    t.string   "exit_dock_id",   limit: 255
    t.string   "permalink",      limit: 255
    t.string   "description",    limit: 255
    t.string   "quantity",       limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.datetime "deleted_at"
  end

  add_index "apiv1_batches", ["appointment_id"], name: "index_apiv1_batches_on_appointment_id", using: :btree
  add_index "apiv1_batches", ["warehouse_id"], name: "index_apiv1_batches_on_warehouse_id", using: :btree
  add_index "apiv1_batches", ["weighticket_id"], name: "index_apiv1_batches_on_weighticket_id", using: :btree

  create_table "apiv1_cameras", force: :cascade do |t|
    t.string   "permalink",    limit: 255
    t.string   "camera_name",  limit: 255
    t.string   "mac_address",  limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "camera_style", limit: 255
    t.integer  "tile_id",      limit: 4
  end

  add_index "apiv1_cameras", ["tile_id"], name: "index_apiv1_cameras_on_tile_id", using: :btree

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

  create_table "apiv1_pictures", force: :cascade do |t|
    t.integer  "imageable_id",     limit: 4
    t.string   "imageable_type",   limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "pic_file_name",    limit: 255
    t.string   "pic_content_type", limit: 255
    t.integer  "pic_file_size",    limit: 4
    t.datetime "pic_updated_at"
  end

  create_table "apiv1_tiles", force: :cascade do |t|
    t.string   "tile_type",  limit: 255
    t.string   "tile_name",  limit: 255
    t.string   "status",     limit: 255
    t.integer  "x",          limit: 4
    t.integer  "y",          limit: 4
    t.integer  "z",          limit: 4
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.datetime "deleted_at"
    t.string   "fire_id",    limit: 255
    t.decimal  "width",                  precision: 10, scale: 6
    t.decimal  "height",                 precision: 10, scale: 6
  end

  create_table "apiv1_trucks", force: :cascade do |t|
    t.string   "entry_scale_id", limit: 255
    t.string   "exit_scale_id",  limit: 255
    t.string   "dock_id",        limit: 255
    t.string   "appointment_id", limit: 255
    t.string   "weighticket_id", limit: 255
    t.datetime "arrived_at"
    t.datetime "departed_at"
    t.datetime "docked_at"
    t.datetime "undocked_at"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
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
    t.string   "finisher_id",        limit: 255
    t.decimal  "finish_pounds",                    precision: 15, scale: 2
  end

  create_table "seed_migration_data_migrations", force: :cascade do |t|
    t.string   "version",     limit: 255
    t.integer  "runtime",     limit: 4
    t.datetime "migrated_on"
  end

  add_foreign_key "apiv1_cameras", "apiv1_tiles", column: "tile_id"
end
