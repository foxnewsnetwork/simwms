# encoding: UTF-8
# This file is auto-generated from the current content of the database. Instead
# of editing this file, please use the migrations feature of Seed Migration to
# incrementally modify your database, and then regenerate this seed file.
#
# If you need to create the database on another system, you should be using
# db:seed, not running all the migrations from scratch. The latter is a flawed
# and unsustainable approach (the more migrations you'll amass, the slower
# it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Base.transaction do

  Apiv1::User.create({"created_at"=>"2015-05-29T21:19:00.000Z", "crypted_password"=>"$2a$10$3Wr22HRb2pGEn0U3hVT7kO1iG9dAyTjQOnsryrWz/0f.X9qf0sF0.", "deleted_at"=>nil, "email"=>"manager@test.co", "permalink"=>nil, "remember_me_token"=>nil, "remember_me_token_expires_at"=>nil, "reset_password_email_sent_at"=>nil, "reset_password_token"=>nil, "reset_password_token_expires_at"=>nil, "role"=>"manager", "salt"=>"fkrejtoGyhejiHz8pNRX", "updated_at"=>"2015-05-29T21:19:00.000Z", "username"=>nil})

  Apiv1::User.create({"created_at"=>"2015-05-29T21:19:00.000Z", "crypted_password"=>"$2a$10$epZqNzjbEqvyKaeDhYjRbuMXeEPOirrmJ2eShRdG5fQb0VlAeDJY6", "deleted_at"=>nil, "email"=>"dockworker@test.co", "permalink"=>nil, "remember_me_token"=>nil, "remember_me_token_expires_at"=>nil, "reset_password_email_sent_at"=>nil, "reset_password_token"=>nil, "reset_password_token_expires_at"=>nil, "role"=>"dockworker", "salt"=>"bxdgigDXhcJTThSgS5vW", "updated_at"=>"2015-05-29T21:19:00.000Z", "username"=>nil})

  Apiv1::User.create({"created_at"=>"2015-05-29T21:19:01.000Z", "crypted_password"=>"$2a$10$QXRCUArVDFc0Q2w2LZqI0uO7qsDRvPFUVyPNwZn84hoUu1pBfJ452", "deleted_at"=>nil, "email"=>"scalemaster@test.co", "permalink"=>nil, "remember_me_token"=>nil, "remember_me_token_expires_at"=>nil, "reset_password_email_sent_at"=>nil, "reset_password_token"=>nil, "reset_password_token_expires_at"=>nil, "role"=>"scalemaster", "salt"=>"hG8qZxAVxthwpjHyLsvE", "updated_at"=>"2015-05-29T21:19:01.000Z", "username"=>nil})

  Apiv1::User.create({"created_at"=>"2015-05-29T21:19:01.000Z", "crypted_password"=>"$2a$10$E2Ka1cmW4s7d1k6AJZ7.2.02yfgC1gB0mwoFQlgES2ULIm4bKYZ42", "deleted_at"=>nil, "email"=>"logistics@test.co", "permalink"=>nil, "remember_me_token"=>nil, "remember_me_token_expires_at"=>nil, "reset_password_email_sent_at"=>nil, "reset_password_token"=>nil, "reset_password_token_expires_at"=>nil, "role"=>"logistics", "salt"=>"8qpnjxzADRgqhsnmiyzp", "updated_at"=>"2015-05-29T21:19:01.000Z", "username"=>nil})
  ActiveRecord::Base.connection.reset_pk_sequence!('apiv1_users')

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>1, "status"=>"okay", "tile_name"=>"0", "tile_type"=>"barn", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>-2, "y"=>2, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>2, "status"=>"okay", "tile_name"=>"1", "tile_type"=>"barn", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>-2, "y"=>3, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>3, "status"=>"okay", "tile_name"=>"2", "tile_type"=>"barn", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>-2, "y"=>4, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>4, "status"=>"okay", "tile_name"=>"3", "tile_type"=>"barn", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>-2, "y"=>5, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>5, "status"=>"okay", "tile_name"=>"4", "tile_type"=>"barn", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>-2, "y"=>6, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>6, "status"=>"okay", "tile_name"=>"5", "tile_type"=>"barn", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>-2, "y"=>7, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>7, "status"=>"okay", "tile_name"=>"6", "tile_type"=>"barn", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>-2, "y"=>8, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>8, "status"=>"okay", "tile_name"=>"7", "tile_type"=>"barn", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>-2, "y"=>9, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>9, "status"=>"okay", "tile_name"=>"8", "tile_type"=>"barn", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>-2, "y"=>10, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>10, "status"=>"okay", "tile_name"=>"9", "tile_type"=>"barn", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>-2, "y"=>11, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>11, "status"=>"okay", "tile_name"=>"10", "tile_type"=>"barn", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>-2, "y"=>12, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>12, "status"=>"okay", "tile_name"=>"11", "tile_type"=>"barn", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>2, "y"=>6, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>13, "status"=>"okay", "tile_name"=>"12", "tile_type"=>"barn", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>2, "y"=>7, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>14, "status"=>"okay", "tile_name"=>"13", "tile_type"=>"barn", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>2, "y"=>8, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>15, "status"=>"okay", "tile_name"=>"14", "tile_type"=>"barn", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>2, "y"=>9, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>16, "status"=>"okay", "tile_name"=>"15", "tile_type"=>"barn", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>2, "y"=>10, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>17, "status"=>"okay", "tile_name"=>"16", "tile_type"=>"barn", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>2, "y"=>11, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>18, "status"=>nil, "tile_name"=>"0", "tile_type"=>"road", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>0, "y"=>1, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>19, "status"=>nil, "tile_name"=>"1", "tile_type"=>"road", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>0, "y"=>2, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>20, "status"=>nil, "tile_name"=>"2", "tile_type"=>"road", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>0, "y"=>3, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>21, "status"=>nil, "tile_name"=>"3", "tile_type"=>"road", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>0, "y"=>4, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>22, "status"=>nil, "tile_name"=>"4", "tile_type"=>"road", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>0, "y"=>5, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>23, "status"=>nil, "tile_name"=>"5", "tile_type"=>"road", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>0, "y"=>6, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>24, "status"=>nil, "tile_name"=>"6", "tile_type"=>"road", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>0, "y"=>7, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>25, "status"=>nil, "tile_name"=>"7", "tile_type"=>"road", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>0, "y"=>8, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>26, "status"=>nil, "tile_name"=>"8", "tile_type"=>"road", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>0, "y"=>9, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>27, "status"=>nil, "tile_name"=>"9", "tile_type"=>"road", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>0, "y"=>10, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>28, "status"=>nil, "tile_name"=>"10", "tile_type"=>"road", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>0, "y"=>11, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>29, "status"=>nil, "tile_name"=>"11", "tile_type"=>"road", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>0, "y"=>12, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>30, "status"=>nil, "tile_name"=>"12", "tile_type"=>"road", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>1, "y"=>12, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>31, "status"=>nil, "tile_name"=>"13", "tile_type"=>"road", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>2, "y"=>12, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>32, "status"=>nil, "tile_name"=>"14", "tile_type"=>"road", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>3, "y"=>12, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>33, "status"=>nil, "tile_name"=>"15", "tile_type"=>"road", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>4, "y"=>12, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>34, "status"=>nil, "tile_name"=>"16", "tile_type"=>"road", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>5, "y"=>12, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>35, "status"=>nil, "tile_name"=>"17", "tile_type"=>"road", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>6, "y"=>12, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>36, "status"=>nil, "tile_name"=>"18", "tile_type"=>"road", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>7, "y"=>12, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>37, "status"=>nil, "tile_name"=>"19", "tile_type"=>"road", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>8, "y"=>12, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>38, "status"=>nil, "tile_name"=>"20", "tile_type"=>"road", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>8, "y"=>1, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>39, "status"=>nil, "tile_name"=>"21", "tile_type"=>"road", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>8, "y"=>2, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>40, "status"=>nil, "tile_name"=>"22", "tile_type"=>"road", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>8, "y"=>3, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>41, "status"=>nil, "tile_name"=>"23", "tile_type"=>"road", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>8, "y"=>4, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>42, "status"=>nil, "tile_name"=>"24", "tile_type"=>"road", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>8, "y"=>5, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>43, "status"=>nil, "tile_name"=>"25", "tile_type"=>"road", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>8, "y"=>6, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>44, "status"=>nil, "tile_name"=>"26", "tile_type"=>"road", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>8, "y"=>7, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>45, "status"=>nil, "tile_name"=>"27", "tile_type"=>"road", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>8, "y"=>8, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>46, "status"=>nil, "tile_name"=>"28", "tile_type"=>"road", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>8, "y"=>9, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>47, "status"=>nil, "tile_name"=>"29", "tile_type"=>"road", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>8, "y"=>10, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>48, "status"=>nil, "tile_name"=>"30", "tile_type"=>"road", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>8, "y"=>11, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>49, "status"=>nil, "tile_name"=>"31", "tile_type"=>"road", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>8, "y"=>12, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>50, "status"=>nil, "tile_name"=>"0", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>3, "y"=>4, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>51, "status"=>nil, "tile_name"=>"1", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>3, "y"=>5, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>52, "status"=>nil, "tile_name"=>"2", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>3, "y"=>6, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>53, "status"=>nil, "tile_name"=>"3", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>3, "y"=>7, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>54, "status"=>nil, "tile_name"=>"4", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>3, "y"=>8, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>55, "status"=>nil, "tile_name"=>"5", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>3, "y"=>9, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>56, "status"=>nil, "tile_name"=>"6", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>3, "y"=>10, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>57, "status"=>nil, "tile_name"=>"7", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>3, "y"=>11, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>58, "status"=>nil, "tile_name"=>"8", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>4, "y"=>4, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>59, "status"=>nil, "tile_name"=>"9", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>4, "y"=>5, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>60, "status"=>nil, "tile_name"=>"10", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>4, "y"=>6, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>61, "status"=>nil, "tile_name"=>"11", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>4, "y"=>7, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>62, "status"=>nil, "tile_name"=>"12", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>4, "y"=>8, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>63, "status"=>nil, "tile_name"=>"13", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>4, "y"=>9, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>64, "status"=>nil, "tile_name"=>"14", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>4, "y"=>10, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>65, "status"=>nil, "tile_name"=>"15", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>4, "y"=>11, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>66, "status"=>nil, "tile_name"=>"16", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>5, "y"=>4, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>67, "status"=>nil, "tile_name"=>"17", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>5, "y"=>5, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>68, "status"=>nil, "tile_name"=>"18", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>5, "y"=>6, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>69, "status"=>nil, "tile_name"=>"19", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>5, "y"=>7, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>70, "status"=>nil, "tile_name"=>"20", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>5, "y"=>8, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>71, "status"=>nil, "tile_name"=>"21", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>5, "y"=>9, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>72, "status"=>nil, "tile_name"=>"22", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>5, "y"=>10, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>73, "status"=>nil, "tile_name"=>"23", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>5, "y"=>11, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>74, "status"=>nil, "tile_name"=>"24", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>6, "y"=>4, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>75, "status"=>nil, "tile_name"=>"25", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>6, "y"=>5, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>76, "status"=>nil, "tile_name"=>"26", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>6, "y"=>6, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>77, "status"=>nil, "tile_name"=>"27", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>6, "y"=>7, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>78, "status"=>nil, "tile_name"=>"28", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>6, "y"=>8, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>79, "status"=>nil, "tile_name"=>"29", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>6, "y"=>9, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>80, "status"=>nil, "tile_name"=>"30", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>6, "y"=>10, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>81, "status"=>nil, "tile_name"=>"31", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>6, "y"=>11, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>82, "status"=>nil, "tile_name"=>"32", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>-3, "y"=>2, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>83, "status"=>nil, "tile_name"=>"33", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>-3, "y"=>3, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>84, "status"=>nil, "tile_name"=>"34", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>-3, "y"=>4, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>85, "status"=>nil, "tile_name"=>"35", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>-3, "y"=>5, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>86, "status"=>nil, "tile_name"=>"36", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>-3, "y"=>6, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>87, "status"=>nil, "tile_name"=>"37", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>-3, "y"=>7, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>88, "status"=>nil, "tile_name"=>"38", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>-3, "y"=>8, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>89, "status"=>nil, "tile_name"=>"39", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>-3, "y"=>9, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>90, "status"=>nil, "tile_name"=>"40", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>-3, "y"=>10, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>91, "status"=>nil, "tile_name"=>"41", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>-3, "y"=>11, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>92, "status"=>nil, "tile_name"=>"42", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>-3, "y"=>12, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>93, "status"=>nil, "tile_name"=>"0", "tile_type"=>"station", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>-1, "y"=>0, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>94, "status"=>nil, "tile_name"=>"1", "tile_type"=>"station", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>7, "y"=>0, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>95, "status"=>nil, "tile_name"=>"0", "tile_type"=>"scale", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>0, "y"=>0, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>96, "status"=>nil, "tile_name"=>"1", "tile_type"=>"scale", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>8, "y"=>0, "z"=>nil})
  ActiveRecord::Base.connection.reset_pk_sequence!('apiv1_tiles')

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-29T21:19:01.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-19T21:19:01.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>1, "material_description"=>"-10 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-1", "updated_at"=>"2015-05-29T21:19:01.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-29T21:19:01.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-20T21:19:01.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>2, "material_description"=>"-9 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-2", "updated_at"=>"2015-05-29T21:19:01.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-29T21:19:01.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-21T21:19:01.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>3, "material_description"=>"-8 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-3", "updated_at"=>"2015-05-29T21:19:01.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-29T21:19:01.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-22T21:19:01.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>4, "material_description"=>"-7 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-4", "updated_at"=>"2015-05-29T21:19:01.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-29T21:19:01.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-23T21:19:01.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>5, "material_description"=>"-6 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-5", "updated_at"=>"2015-05-29T21:19:01.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-29T21:19:01.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-24T21:19:01.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>6, "material_description"=>"-5 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-6", "updated_at"=>"2015-05-29T21:19:01.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-29T21:19:01.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-25T21:19:01.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>7, "material_description"=>"-4 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-7", "updated_at"=>"2015-05-29T21:19:01.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-29T21:19:01.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-26T21:19:01.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>8, "material_description"=>"-3 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-8", "updated_at"=>"2015-05-29T21:19:01.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-29T21:19:01.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-27T21:19:01.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>9, "material_description"=>"-2 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-9", "updated_at"=>"2015-05-29T21:19:01.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-29T21:19:01.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-28T21:19:01.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>10, "material_description"=>"-1 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-10", "updated_at"=>"2015-05-29T21:19:01.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-29T21:19:01.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-29T21:19:01.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>11, "material_description"=>"0 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-11", "updated_at"=>"2015-05-29T21:19:01.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-29T21:19:01.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-30T21:19:01.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>12, "material_description"=>"1 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-12", "updated_at"=>"2015-05-29T21:19:01.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-29T21:19:01.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-31T21:19:01.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>13, "material_description"=>"2 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-13", "updated_at"=>"2015-05-29T21:19:01.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-29T21:19:01.000Z", "deleted_at"=>nil, "expected_at"=>"2015-06-01T21:19:01.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>14, "material_description"=>"3 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-14", "updated_at"=>"2015-05-29T21:19:01.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-29T21:19:01.000Z", "deleted_at"=>nil, "expected_at"=>"2015-06-02T21:19:01.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>15, "material_description"=>"4 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-15", "updated_at"=>"2015-05-29T21:19:01.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-29T21:19:01.000Z", "deleted_at"=>nil, "expected_at"=>"2015-06-03T21:19:01.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>16, "material_description"=>"5 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-16", "updated_at"=>"2015-05-29T21:19:01.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-29T21:19:01.000Z", "deleted_at"=>nil, "expected_at"=>"2015-06-04T21:19:01.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>17, "material_description"=>"6 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-17", "updated_at"=>"2015-05-29T21:19:01.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-29T21:19:01.000Z", "deleted_at"=>nil, "expected_at"=>"2015-06-05T21:19:01.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>18, "material_description"=>"7 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-18", "updated_at"=>"2015-05-29T21:19:01.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-29T21:19:01.000Z", "deleted_at"=>nil, "expected_at"=>"2015-06-06T21:19:01.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>19, "material_description"=>"8 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-19", "updated_at"=>"2015-05-29T21:19:01.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-29T21:19:01.000Z", "deleted_at"=>nil, "expected_at"=>"2015-06-07T21:19:01.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>20, "material_description"=>"9 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-20", "updated_at"=>"2015-05-29T21:19:01.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-29T21:19:01.000Z", "deleted_at"=>nil, "expected_at"=>"2015-06-08T21:19:01.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>21, "material_description"=>"10 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-21", "updated_at"=>"2015-05-29T21:19:01.000Z"})
  ActiveRecord::Base.connection.reset_pk_sequence!('apiv1_appointments')
end

SeedMigration::Migrator.bootstrap(20150330222204)
