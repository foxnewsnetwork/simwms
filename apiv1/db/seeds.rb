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

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXr9kck4G2qFnyLpf", "id"=>1, "status"=>"okay", "tile_name"=>"0", "tile_type"=>"barn", "updated_at"=>"2015-05-29T21:19:44.000Z", "x"=>-2, "y"=>2, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXr9mvr175VlG4tB8", "id"=>2, "status"=>"okay", "tile_name"=>"1", "tile_type"=>"barn", "updated_at"=>"2015-05-29T21:19:44.000Z", "x"=>-2, "y"=>3, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXr9mvr175VlG4tB9", "id"=>3, "status"=>"okay", "tile_name"=>"2", "tile_type"=>"barn", "updated_at"=>"2015-05-29T21:19:44.000Z", "x"=>-2, "y"=>4, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXr9nEsNqCt7Br2w_", "id"=>4, "status"=>"okay", "tile_name"=>"3", "tile_type"=>"barn", "updated_at"=>"2015-05-29T21:19:44.000Z", "x"=>-2, "y"=>5, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXr9o4s2w9G8Ou11M", "id"=>5, "status"=>"okay", "tile_name"=>"4", "tile_type"=>"barn", "updated_at"=>"2015-05-29T21:19:44.000Z", "x"=>-2, "y"=>6, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXr9o4s2w9G8Ou11N", "id"=>6, "status"=>"okay", "tile_name"=>"5", "tile_type"=>"barn", "updated_at"=>"2015-05-29T21:19:44.000Z", "x"=>-2, "y"=>7, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXr9p8tXXMNUkauK6", "id"=>7, "status"=>"okay", "tile_name"=>"6", "tile_type"=>"barn", "updated_at"=>"2015-05-29T21:19:44.000Z", "x"=>-2, "y"=>8, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXr9p8tXXMNUkauK7", "id"=>8, "status"=>"okay", "tile_name"=>"7", "tile_type"=>"barn", "updated_at"=>"2015-05-29T21:19:44.000Z", "x"=>-2, "y"=>9, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXr9q4gOhsoRG78D9", "id"=>9, "status"=>"okay", "tile_name"=>"8", "tile_type"=>"barn", "updated_at"=>"2015-05-29T21:19:44.000Z", "x"=>-2, "y"=>10, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXr9q4gOhsoRG78DA", "id"=>10, "status"=>"okay", "tile_name"=>"9", "tile_type"=>"barn", "updated_at"=>"2015-05-29T21:19:44.000Z", "x"=>-2, "y"=>11, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXr9r3UdDjwqVAXAK", "id"=>11, "status"=>"okay", "tile_name"=>"10", "tile_type"=>"barn", "updated_at"=>"2015-05-29T21:19:44.000Z", "x"=>-2, "y"=>12, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXr9r3UdDjwqVAXAL", "id"=>12, "status"=>"okay", "tile_name"=>"11", "tile_type"=>"barn", "updated_at"=>"2015-05-29T21:19:44.000Z", "x"=>2, "y"=>6, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXr9s5iLmQBAS99q7", "id"=>13, "status"=>"okay", "tile_name"=>"12", "tile_type"=>"barn", "updated_at"=>"2015-05-29T21:19:45.000Z", "x"=>2, "y"=>7, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXr9tN0GxJrr_brp6", "id"=>14, "status"=>"okay", "tile_name"=>"13", "tile_type"=>"barn", "updated_at"=>"2015-05-29T21:19:45.000Z", "x"=>2, "y"=>8, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXr9tN0GxJrr_brp7", "id"=>15, "status"=>"okay", "tile_name"=>"14", "tile_type"=>"barn", "updated_at"=>"2015-05-29T21:19:45.000Z", "x"=>2, "y"=>9, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXr9uPMRY_23-8whe", "id"=>16, "status"=>"okay", "tile_name"=>"15", "tile_type"=>"barn", "updated_at"=>"2015-05-29T21:19:45.000Z", "x"=>2, "y"=>10, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXr9uPMRY_23-8whf", "id"=>17, "status"=>"okay", "tile_name"=>"16", "tile_type"=>"barn", "updated_at"=>"2015-05-29T21:19:45.000Z", "x"=>2, "y"=>11, "z"=>nil})

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

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXrBWMbv3Y8mlPea8", "id"=>50, "status"=>nil, "tile_name"=>"0", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:41.000Z", "x"=>3, "y"=>4, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXrBY_J9cv2ezu13T", "id"=>51, "status"=>nil, "tile_name"=>"1", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:41.000Z", "x"=>3, "y"=>5, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXrBY_J9cv2ezu13U", "id"=>52, "status"=>nil, "tile_name"=>"2", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:41.000Z", "x"=>3, "y"=>6, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXrBZ7dfMnje_bdeq", "id"=>53, "status"=>nil, "tile_name"=>"3", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:41.000Z", "x"=>3, "y"=>7, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXrB_Z3hcRZQ9ZtEl", "id"=>54, "status"=>nil, "tile_name"=>"4", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:41.000Z", "x"=>3, "y"=>8, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXrBaUJSB8S8YaIKU", "id"=>55, "status"=>nil, "tile_name"=>"5", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:41.000Z", "x"=>3, "y"=>9, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXrBcQyC9nsJ9XV7W", "id"=>56, "status"=>nil, "tile_name"=>"6", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:41.000Z", "x"=>3, "y"=>10, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXrBcQyC9nsJ9XV7X", "id"=>57, "status"=>nil, "tile_name"=>"7", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:41.000Z", "x"=>3, "y"=>11, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXrBdBve0I3L1gnmQ", "id"=>58, "status"=>nil, "tile_name"=>"8", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:41.000Z", "x"=>4, "y"=>4, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXrBdBve0I3L1gnmR", "id"=>59, "status"=>nil, "tile_name"=>"9", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:41.000Z", "x"=>4, "y"=>5, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXrBesaDMEwZMN6on", "id"=>60, "status"=>nil, "tile_name"=>"10", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:42.000Z", "x"=>4, "y"=>6, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXrBesaDMEwZMN6oo", "id"=>61, "status"=>nil, "tile_name"=>"11", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:42.000Z", "x"=>4, "y"=>7, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXrBf3KGgbfmPRiTo", "id"=>62, "status"=>nil, "tile_name"=>"12", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:42.000Z", "x"=>4, "y"=>8, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXrBf3KGgbfmPRiTp", "id"=>63, "status"=>nil, "tile_name"=>"13", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:42.000Z", "x"=>4, "y"=>9, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXrBf3KGgbfmPRiTq", "id"=>64, "status"=>nil, "tile_name"=>"14", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:42.000Z", "x"=>4, "y"=>10, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXrBf3KGgbfmPRiTr", "id"=>65, "status"=>nil, "tile_name"=>"15", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:42.000Z", "x"=>4, "y"=>11, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXrBgrJoDBxlbIL-d", "id"=>66, "status"=>nil, "tile_name"=>"16", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:42.000Z", "x"=>5, "y"=>4, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXrBgrJoDBxlbIL-e", "id"=>67, "status"=>nil, "tile_name"=>"17", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:42.000Z", "x"=>5, "y"=>5, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXrBgrJoDBxlbIL-f", "id"=>68, "status"=>nil, "tile_name"=>"18", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:42.000Z", "x"=>5, "y"=>6, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXrBgrJoDBxlbIL-g", "id"=>69, "status"=>nil, "tile_name"=>"19", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:42.000Z", "x"=>5, "y"=>7, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXrBhspOigSCi7Gky", "id"=>70, "status"=>nil, "tile_name"=>"20", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:42.000Z", "x"=>5, "y"=>8, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXrBhspOigSCi7Gkz", "id"=>71, "status"=>nil, "tile_name"=>"21", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:42.000Z", "x"=>5, "y"=>9, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXrBhspOigSCi7Gl-", "id"=>72, "status"=>nil, "tile_name"=>"22", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:42.000Z", "x"=>5, "y"=>10, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXrBhspOigSCi7Gl0", "id"=>73, "status"=>nil, "tile_name"=>"23", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:42.000Z", "x"=>5, "y"=>11, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXrBiP0qC1oTejbDq", "id"=>74, "status"=>nil, "tile_name"=>"24", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:42.000Z", "x"=>6, "y"=>4, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXrBiP0qC1oTejbDr", "id"=>75, "status"=>nil, "tile_name"=>"25", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:42.000Z", "x"=>6, "y"=>5, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXrBiP0qC1oTejbDs", "id"=>76, "status"=>nil, "tile_name"=>"26", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:43.000Z", "x"=>6, "y"=>6, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXrBjsgNlmLzdAnUU", "id"=>77, "status"=>nil, "tile_name"=>"27", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:43.000Z", "x"=>6, "y"=>7, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXrBjsgNlmLzdAnUV", "id"=>78, "status"=>nil, "tile_name"=>"28", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:43.000Z", "x"=>6, "y"=>8, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXrBksnUWCYn_oxGQ", "id"=>79, "status"=>nil, "tile_name"=>"29", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:43.000Z", "x"=>6, "y"=>9, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXrBksnUWCYn_oxGR", "id"=>80, "status"=>nil, "tile_name"=>"30", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:43.000Z", "x"=>6, "y"=>10, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXrBksnUWCYn_oxGS", "id"=>81, "status"=>nil, "tile_name"=>"31", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:43.000Z", "x"=>6, "y"=>11, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXrBlKMDrBy2VUe4B", "id"=>82, "status"=>nil, "tile_name"=>"32", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:43.000Z", "x"=>-3, "y"=>2, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXrBlKMDrBy2VUe4C", "id"=>83, "status"=>nil, "tile_name"=>"33", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:43.000Z", "x"=>-3, "y"=>3, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXrBlKMDrBy2VUe4D", "id"=>84, "status"=>nil, "tile_name"=>"34", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:43.000Z", "x"=>-3, "y"=>4, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXrBm6e87m4vCRsiZ", "id"=>85, "status"=>nil, "tile_name"=>"35", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:43.000Z", "x"=>-3, "y"=>5, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXrBm6e87m4vCRsi_", "id"=>86, "status"=>nil, "tile_name"=>"36", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:43.000Z", "x"=>-3, "y"=>6, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXrBm6e87m4vCRsia", "id"=>87, "status"=>nil, "tile_name"=>"37", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:43.000Z", "x"=>-3, "y"=>7, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXrBnHWqfyrD6ZMjp", "id"=>88, "status"=>nil, "tile_name"=>"38", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:43.000Z", "x"=>-3, "y"=>8, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXrBnHWqfyrD6ZMjq", "id"=>89, "status"=>nil, "tile_name"=>"39", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:43.000Z", "x"=>-3, "y"=>9, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXrBnHWqfyrD6ZMjr", "id"=>90, "status"=>nil, "tile_name"=>"40", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:43.000Z", "x"=>-3, "y"=>10, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXrBnHWqfyrD6ZMjs", "id"=>91, "status"=>nil, "tile_name"=>"41", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:44.000Z", "x"=>-3, "y"=>11, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXrBoWFIxmOwj3CHj", "id"=>92, "status"=>nil, "tile_name"=>"42", "tile_type"=>"warehouse", "updated_at"=>"2015-05-29T21:19:44.000Z", "x"=>-3, "y"=>12, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>93, "status"=>nil, "tile_name"=>"0", "tile_type"=>"station", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>-1, "y"=>0, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>94, "status"=>nil, "tile_name"=>"1", "tile_type"=>"station", "updated_at"=>"2015-05-29T21:19:00.000Z", "x"=>7, "y"=>0, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXrAYp0mlwJa_mIyU", "id"=>95, "status"=>nil, "tile_name"=>"0", "tile_type"=>"scale", "updated_at"=>"2015-05-29T21:19:41.000Z", "x"=>0, "y"=>0, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-29T21:19:00.000Z", "deleted_at"=>nil, "fire_id"=>"-JqWXrA_3L29v-BxWbhS", "id"=>96, "status"=>nil, "tile_name"=>"1", "tile_type"=>"scale", "updated_at"=>"2015-05-29T21:19:41.000Z", "x"=>8, "y"=>0, "z"=>nil})
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

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Poka Poka Co", "company_permalink"=>"pk-pk-c", "created_at"=>"2015-05-29T23:07:32.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-29T23:07:16.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>22, "material_description"=>"just trash", "material_permalink"=>nil, "notes"=>"2fasdf", "permalink"=>"pk-pk-c-22", "updated_at"=>"2015-05-29T23:07:32.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"yukitoki to issho ni", "company_permalink"=>"ktk-t-ssh-n", "created_at"=>"2015-05-29T23:14:09.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-29T23:13:45.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>23, "material_description"=>"haru ni kawatte iku yo", "material_permalink"=>nil, "notes"=>"azare ao sagasu yo", "permalink"=>"ktk-t-ssh-n-23", "updated_at"=>"2015-05-29T23:14:09.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"sadfasdf", "company_permalink"=>"sdfsdf", "created_at"=>"2015-06-01T04:00:56.000Z", "deleted_at"=>nil, "expected_at"=>"2015-06-01T04:00:52.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>24, "material_description"=>"fasdf", "material_permalink"=>nil, "notes"=>"asdf", "permalink"=>"sdfsdf-24", "updated_at"=>"2015-06-01T04:00:56.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Some Dumb Company", "company_permalink"=>"sm-dmb-cmpn", "created_at"=>"2015-06-01T17:39:14.000Z", "deleted_at"=>nil, "expected_at"=>"2015-06-01T17:38:58.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>25, "material_description"=>"asdfndjasflj", "material_permalink"=>nil, "notes"=>"asdf", "permalink"=>"sm-dmb-cmpn-25", "updated_at"=>"2015-06-01T17:39:14.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"fasdgfasg", "company_permalink"=>"fsdgfsg", "created_at"=>"2015-06-01T18:09:38.000Z", "deleted_at"=>nil, "expected_at"=>"2015-06-01T18:09:33.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>26, "material_description"=>"452354", "material_permalink"=>nil, "notes"=>"adsfads", "permalink"=>"fsdgfsg-26", "updated_at"=>"2015-06-01T18:09:38.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"hibikaze", "company_permalink"=>"hbkz", "created_at"=>"2015-06-01T18:50:01.000Z", "deleted_at"=>nil, "expected_at"=>"2015-06-01T18:49:52.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>27, "material_description"=>"asdkj1", "material_permalink"=>nil, "notes"=>"asdfasdf", "permalink"=>"hbkz-27", "updated_at"=>"2015-06-01T18:50:01.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"gahdfhdfgas asf gasfg ", "company_permalink"=>"ghdfhdfgs-sf-gsfg", "created_at"=>"2015-06-01T22:57:49.000Z", "deleted_at"=>nil, "expected_at"=>"2015-06-01T22:57:41.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>28, "material_description"=>"23422tasdf", "material_permalink"=>nil, "notes"=>"asdf", "permalink"=>"ghdfhdfgs-sf-gsfg-28", "updated_at"=>"2015-06-01T22:57:49.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Today Test Company", "company_permalink"=>"td-tst-cmpn", "created_at"=>"2015-06-02T18:48:53.000Z", "deleted_at"=>nil, "expected_at"=>"2015-06-02T18:48:18.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>29, "material_description"=>"HDPE Milk Jugs", "material_permalink"=>nil, "notes"=>"20 tons of milk jugs", "permalink"=>"td-tst-cmpn-29", "updated_at"=>"2015-06-02T18:48:53.000Z"})
  ActiveRecord::Base.connection.reset_pk_sequence!('apiv1_appointments')
end

SeedMigration::Migrator.bootstrap(20150330222204)
