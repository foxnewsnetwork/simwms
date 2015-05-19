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

  Apiv1::User.create({"created_at"=>"2015-05-14T00:24:26.000Z", "crypted_password"=>"$2a$10$69xfkRrfp/KSG8CMICJGyOKwSxuJdm1df4me0WVkkq0kYYiRHeXfK", "deleted_at"=>nil, "email"=>"manager@test.co", "permalink"=>nil, "remember_me_token"=>nil, "remember_me_token_expires_at"=>nil, "reset_password_email_sent_at"=>nil, "reset_password_token"=>nil, "reset_password_token_expires_at"=>nil, "role"=>"manager", "salt"=>"JpayFCJ5KNTip5A8B9qN", "updated_at"=>"2015-05-14T00:24:26.000Z", "username"=>nil})

  Apiv1::User.create({"created_at"=>"2015-05-14T00:24:26.000Z", "crypted_password"=>"$2a$10$7SrAVv9V9cMV1cYUEsjCR.t.NWQajSgz8rtLpjLmXPBtPYsWhTGmi", "deleted_at"=>nil, "email"=>"dockworker@test.co", "permalink"=>nil, "remember_me_token"=>nil, "remember_me_token_expires_at"=>nil, "reset_password_email_sent_at"=>nil, "reset_password_token"=>nil, "reset_password_token_expires_at"=>nil, "role"=>"dockworker", "salt"=>"VV4TkP3m1MCCQArZb4dj", "updated_at"=>"2015-05-14T00:24:26.000Z", "username"=>nil})

  Apiv1::User.create({"created_at"=>"2015-05-14T00:24:26.000Z", "crypted_password"=>"$2a$10$nThVX8DjCQDA/vG8jSsXfuI1LB0eGG.utCrtuK4Nz5veRByE9BpN.", "deleted_at"=>nil, "email"=>"scalemaster@test.co", "permalink"=>nil, "remember_me_token"=>nil, "remember_me_token_expires_at"=>nil, "reset_password_email_sent_at"=>nil, "reset_password_token"=>nil, "reset_password_token_expires_at"=>nil, "role"=>"scalemaster", "salt"=>"XWQjwb5Uvx1byshgV8KY", "updated_at"=>"2015-05-14T00:24:26.000Z", "username"=>nil})

  Apiv1::User.create({"created_at"=>"2015-05-14T00:24:26.000Z", "crypted_password"=>"$2a$10$7CNZuU4RWfVQrJg3S9oyku.4jC060a9Bp/mP4QE66z82OOurKSf9O", "deleted_at"=>nil, "email"=>"logistics@test.co", "permalink"=>nil, "remember_me_token"=>nil, "remember_me_token_expires_at"=>nil, "reset_password_email_sent_at"=>nil, "reset_password_token"=>nil, "reset_password_token_expires_at"=>nil, "role"=>"logistics", "salt"=>"QRkQ6kcnCccwFaSV569p", "updated_at"=>"2015-05-14T00:24:26.000Z", "username"=>nil})
  ActiveRecord::Base.connection.reset_pk_sequence!('apiv1_users')

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrkILKD8FPhgrck2", "id"=>1, "status"=>"okay", "tile_name"=>"0", "tile_type"=>"barn", "updated_at"=>"2015-05-14T00:25:07.000Z", "x"=>-2, "y"=>2, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrkKb9u3v513ID3L", "id"=>2, "status"=>"okay", "tile_name"=>"1", "tile_type"=>"barn", "updated_at"=>"2015-05-14T00:25:07.000Z", "x"=>-2, "y"=>3, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrkL6_m9vv3J3JTi", "id"=>3, "status"=>"okay", "tile_name"=>"2", "tile_type"=>"barn", "updated_at"=>"2015-05-14T00:25:08.000Z", "x"=>-2, "y"=>4, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrkMPrmuqNd_FZEY", "id"=>4, "status"=>"okay", "tile_name"=>"3", "tile_type"=>"barn", "updated_at"=>"2015-05-14T00:25:07.000Z", "x"=>-2, "y"=>5, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrkMPrmuqNd_FZEZ", "id"=>5, "status"=>"okay", "tile_name"=>"4", "tile_type"=>"barn", "updated_at"=>"2015-05-14T00:25:08.000Z", "x"=>-2, "y"=>6, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrkO4MSkv34LAtTf", "id"=>6, "status"=>"okay", "tile_name"=>"5", "tile_type"=>"barn", "updated_at"=>"2015-05-14T00:25:08.000Z", "x"=>-2, "y"=>7, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrkO4MSkv34LAtTg", "id"=>7, "status"=>"okay", "tile_name"=>"6", "tile_type"=>"barn", "updated_at"=>"2015-05-14T00:25:08.000Z", "x"=>-2, "y"=>8, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrkPCSdba3MTu6Zq", "id"=>8, "status"=>"okay", "tile_name"=>"7", "tile_type"=>"barn", "updated_at"=>"2015-05-14T00:25:08.000Z", "x"=>-2, "y"=>9, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrkQWLgPWeUiqcDa", "id"=>9, "status"=>"okay", "tile_name"=>"8", "tile_type"=>"barn", "updated_at"=>"2015-05-14T00:25:08.000Z", "x"=>-2, "y"=>10, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrkRxUjCdkSskn2e", "id"=>10, "status"=>"okay", "tile_name"=>"9", "tile_type"=>"barn", "updated_at"=>"2015-05-14T00:25:08.000Z", "x"=>-2, "y"=>11, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrkRxUjCdkSskn2f", "id"=>11, "status"=>"okay", "tile_name"=>"10", "tile_type"=>"barn", "updated_at"=>"2015-05-14T00:25:08.000Z", "x"=>-2, "y"=>12, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrkSwacnviH86ViT", "id"=>12, "status"=>"okay", "tile_name"=>"11", "tile_type"=>"barn", "updated_at"=>"2015-05-14T00:25:08.000Z", "x"=>2, "y"=>6, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrkTNnSHbC8D5rlh", "id"=>13, "status"=>"okay", "tile_name"=>"12", "tile_type"=>"barn", "updated_at"=>"2015-05-14T00:25:08.000Z", "x"=>2, "y"=>7, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrkTNnSHbC8D5rli", "id"=>14, "status"=>"okay", "tile_name"=>"13", "tile_type"=>"barn", "updated_at"=>"2015-05-14T00:25:08.000Z", "x"=>2, "y"=>8, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrkTNnSHbC8D5rlj", "id"=>15, "status"=>"okay", "tile_name"=>"14", "tile_type"=>"barn", "updated_at"=>"2015-05-14T00:25:08.000Z", "x"=>2, "y"=>9, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrkUGKqhvxPy8EkI", "id"=>16, "status"=>"okay", "tile_name"=>"15", "tile_type"=>"barn", "updated_at"=>"2015-05-14T00:25:08.000Z", "x"=>2, "y"=>10, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrkUGKqhvxPy8EkJ", "id"=>17, "status"=>"okay", "tile_name"=>"16", "tile_type"=>"barn", "updated_at"=>"2015-05-14T00:25:08.000Z", "x"=>2, "y"=>11, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>18, "status"=>nil, "tile_name"=>"0", "tile_type"=>"road", "updated_at"=>"2015-05-14T00:24:25.000Z", "x"=>0, "y"=>1, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>19, "status"=>nil, "tile_name"=>"1", "tile_type"=>"road", "updated_at"=>"2015-05-14T00:24:25.000Z", "x"=>0, "y"=>2, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>20, "status"=>nil, "tile_name"=>"2", "tile_type"=>"road", "updated_at"=>"2015-05-14T00:24:25.000Z", "x"=>0, "y"=>3, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>21, "status"=>nil, "tile_name"=>"3", "tile_type"=>"road", "updated_at"=>"2015-05-14T00:24:25.000Z", "x"=>0, "y"=>4, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>22, "status"=>nil, "tile_name"=>"4", "tile_type"=>"road", "updated_at"=>"2015-05-14T00:24:25.000Z", "x"=>0, "y"=>5, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>23, "status"=>nil, "tile_name"=>"5", "tile_type"=>"road", "updated_at"=>"2015-05-14T00:24:25.000Z", "x"=>0, "y"=>6, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>24, "status"=>nil, "tile_name"=>"6", "tile_type"=>"road", "updated_at"=>"2015-05-14T00:24:25.000Z", "x"=>0, "y"=>7, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>25, "status"=>nil, "tile_name"=>"7", "tile_type"=>"road", "updated_at"=>"2015-05-14T00:24:25.000Z", "x"=>0, "y"=>8, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>26, "status"=>nil, "tile_name"=>"8", "tile_type"=>"road", "updated_at"=>"2015-05-14T00:24:25.000Z", "x"=>0, "y"=>9, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>27, "status"=>nil, "tile_name"=>"9", "tile_type"=>"road", "updated_at"=>"2015-05-14T00:24:25.000Z", "x"=>0, "y"=>10, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>28, "status"=>nil, "tile_name"=>"10", "tile_type"=>"road", "updated_at"=>"2015-05-14T00:24:25.000Z", "x"=>0, "y"=>11, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>29, "status"=>nil, "tile_name"=>"11", "tile_type"=>"road", "updated_at"=>"2015-05-14T00:24:25.000Z", "x"=>0, "y"=>12, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>30, "status"=>nil, "tile_name"=>"12", "tile_type"=>"road", "updated_at"=>"2015-05-14T00:24:25.000Z", "x"=>1, "y"=>12, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>31, "status"=>nil, "tile_name"=>"13", "tile_type"=>"road", "updated_at"=>"2015-05-14T00:24:25.000Z", "x"=>2, "y"=>12, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>32, "status"=>nil, "tile_name"=>"14", "tile_type"=>"road", "updated_at"=>"2015-05-14T00:24:25.000Z", "x"=>3, "y"=>12, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>33, "status"=>nil, "tile_name"=>"15", "tile_type"=>"road", "updated_at"=>"2015-05-14T00:24:25.000Z", "x"=>4, "y"=>12, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>34, "status"=>nil, "tile_name"=>"16", "tile_type"=>"road", "updated_at"=>"2015-05-14T00:24:25.000Z", "x"=>5, "y"=>12, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>35, "status"=>nil, "tile_name"=>"17", "tile_type"=>"road", "updated_at"=>"2015-05-14T00:24:25.000Z", "x"=>6, "y"=>12, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>36, "status"=>nil, "tile_name"=>"18", "tile_type"=>"road", "updated_at"=>"2015-05-14T00:24:25.000Z", "x"=>7, "y"=>12, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>37, "status"=>nil, "tile_name"=>"19", "tile_type"=>"road", "updated_at"=>"2015-05-14T00:24:25.000Z", "x"=>8, "y"=>12, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>38, "status"=>nil, "tile_name"=>"20", "tile_type"=>"road", "updated_at"=>"2015-05-14T00:24:25.000Z", "x"=>8, "y"=>1, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>39, "status"=>nil, "tile_name"=>"21", "tile_type"=>"road", "updated_at"=>"2015-05-14T00:24:25.000Z", "x"=>8, "y"=>2, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>40, "status"=>nil, "tile_name"=>"22", "tile_type"=>"road", "updated_at"=>"2015-05-14T00:24:25.000Z", "x"=>8, "y"=>3, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>41, "status"=>nil, "tile_name"=>"23", "tile_type"=>"road", "updated_at"=>"2015-05-14T00:24:25.000Z", "x"=>8, "y"=>4, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>42, "status"=>nil, "tile_name"=>"24", "tile_type"=>"road", "updated_at"=>"2015-05-14T00:24:25.000Z", "x"=>8, "y"=>5, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>43, "status"=>nil, "tile_name"=>"25", "tile_type"=>"road", "updated_at"=>"2015-05-14T00:24:25.000Z", "x"=>8, "y"=>6, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>44, "status"=>nil, "tile_name"=>"26", "tile_type"=>"road", "updated_at"=>"2015-05-14T00:24:25.000Z", "x"=>8, "y"=>7, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>45, "status"=>nil, "tile_name"=>"27", "tile_type"=>"road", "updated_at"=>"2015-05-14T00:24:25.000Z", "x"=>8, "y"=>8, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>46, "status"=>nil, "tile_name"=>"28", "tile_type"=>"road", "updated_at"=>"2015-05-14T00:24:25.000Z", "x"=>8, "y"=>9, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>47, "status"=>nil, "tile_name"=>"29", "tile_type"=>"road", "updated_at"=>"2015-05-14T00:24:25.000Z", "x"=>8, "y"=>10, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>48, "status"=>nil, "tile_name"=>"30", "tile_type"=>"road", "updated_at"=>"2015-05-14T00:24:25.000Z", "x"=>8, "y"=>11, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>49, "status"=>nil, "tile_name"=>"31", "tile_type"=>"road", "updated_at"=>"2015-05-14T00:24:25.000Z", "x"=>8, "y"=>12, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrm25jRwoc2f1qV9", "id"=>50, "status"=>nil, "tile_name"=>"0", "tile_type"=>"warehouse", "updated_at"=>"2015-05-14T00:25:08.000Z", "x"=>3, "y"=>4, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrm4tkeOQAWAnL_C", "id"=>51, "status"=>nil, "tile_name"=>"1", "tile_type"=>"warehouse", "updated_at"=>"2015-05-14T00:25:09.000Z", "x"=>3, "y"=>5, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrm4tkeOQAWAnL_D", "id"=>52, "status"=>nil, "tile_name"=>"2", "tile_type"=>"warehouse", "updated_at"=>"2015-05-14T00:25:09.000Z", "x"=>3, "y"=>6, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrm4tkeOQAWAnL_E", "id"=>53, "status"=>nil, "tile_name"=>"3", "tile_type"=>"warehouse", "updated_at"=>"2015-05-14T00:25:09.000Z", "x"=>3, "y"=>7, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrm5mXvuVi7eKhv3", "id"=>54, "status"=>nil, "tile_name"=>"4", "tile_type"=>"warehouse", "updated_at"=>"2015-05-14T00:25:09.000Z", "x"=>3, "y"=>8, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrm5mXvuVi7eKhv4", "id"=>55, "status"=>nil, "tile_name"=>"5", "tile_type"=>"warehouse", "updated_at"=>"2015-05-14T00:25:09.000Z", "x"=>3, "y"=>9, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrm6TB-6mY6OkxrS", "id"=>56, "status"=>nil, "tile_name"=>"6", "tile_type"=>"warehouse", "updated_at"=>"2015-05-14T00:25:09.000Z", "x"=>3, "y"=>10, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrm6TB-6mY6OkxrT", "id"=>57, "status"=>nil, "tile_name"=>"7", "tile_type"=>"warehouse", "updated_at"=>"2015-05-14T00:25:09.000Z", "x"=>3, "y"=>11, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrm6TB-6mY6OkxrU", "id"=>58, "status"=>nil, "tile_name"=>"8", "tile_type"=>"warehouse", "updated_at"=>"2015-05-14T00:25:09.000Z", "x"=>4, "y"=>4, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrm7XvMUnjfCUYYX", "id"=>59, "status"=>nil, "tile_name"=>"9", "tile_type"=>"warehouse", "updated_at"=>"2015-05-14T00:25:09.000Z", "x"=>4, "y"=>5, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrm7XvMUnjfCUYYY", "id"=>60, "status"=>nil, "tile_name"=>"10", "tile_type"=>"warehouse", "updated_at"=>"2015-05-14T00:25:09.000Z", "x"=>4, "y"=>6, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrm7XvMUnjfCUYYZ", "id"=>61, "status"=>nil, "tile_name"=>"11", "tile_type"=>"warehouse", "updated_at"=>"2015-05-14T00:25:09.000Z", "x"=>4, "y"=>7, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrm7XvMUnjfCUYY_", "id"=>62, "status"=>nil, "tile_name"=>"12", "tile_type"=>"warehouse", "updated_at"=>"2015-05-14T00:25:09.000Z", "x"=>4, "y"=>8, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrm7XvMUnjfCUYYa", "id"=>63, "status"=>nil, "tile_name"=>"13", "tile_type"=>"warehouse", "updated_at"=>"2015-05-14T00:25:09.000Z", "x"=>4, "y"=>9, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrm82mb73keekI57", "id"=>64, "status"=>nil, "tile_name"=>"14", "tile_type"=>"warehouse", "updated_at"=>"2015-05-14T00:25:09.000Z", "x"=>4, "y"=>10, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrm82mb73keekI58", "id"=>65, "status"=>nil, "tile_name"=>"15", "tile_type"=>"warehouse", "updated_at"=>"2015-05-14T00:25:10.000Z", "x"=>4, "y"=>11, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrm9mnfN_i6vh4Nr", "id"=>66, "status"=>nil, "tile_name"=>"16", "tile_type"=>"warehouse", "updated_at"=>"2015-05-14T00:25:15.000Z", "x"=>5, "y"=>4, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrm9mnfN_i6vh4Ns", "id"=>67, "status"=>nil, "tile_name"=>"17", "tile_type"=>"warehouse", "updated_at"=>"2015-05-14T00:25:16.000Z", "x"=>5, "y"=>5, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrm9mnfN_i6vh4Nt", "id"=>68, "status"=>nil, "tile_name"=>"18", "tile_type"=>"warehouse", "updated_at"=>"2015-05-14T00:25:16.000Z", "x"=>5, "y"=>6, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrm9mnfN_i6vh4Nu", "id"=>69, "status"=>nil, "tile_name"=>"19", "tile_type"=>"warehouse", "updated_at"=>"2015-05-14T00:25:16.000Z", "x"=>5, "y"=>7, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrm9mnfN_i6vh4Nv", "id"=>70, "status"=>nil, "tile_name"=>"20", "tile_type"=>"warehouse", "updated_at"=>"2015-05-14T00:25:16.000Z", "x"=>5, "y"=>8, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrmAqux8qK8WAx2c", "id"=>71, "status"=>nil, "tile_name"=>"21", "tile_type"=>"warehouse", "updated_at"=>"2015-05-14T00:25:16.000Z", "x"=>5, "y"=>9, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrmAqux8qK8WAx2d", "id"=>72, "status"=>nil, "tile_name"=>"22", "tile_type"=>"warehouse", "updated_at"=>"2015-05-14T00:25:16.000Z", "x"=>5, "y"=>10, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrmAqux8qK8WAx2e", "id"=>73, "status"=>nil, "tile_name"=>"23", "tile_type"=>"warehouse", "updated_at"=>"2015-05-14T00:25:16.000Z", "x"=>5, "y"=>11, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrmB0l7LpdWqqbp2", "id"=>74, "status"=>nil, "tile_name"=>"24", "tile_type"=>"warehouse", "updated_at"=>"2015-05-14T00:25:16.000Z", "x"=>6, "y"=>4, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrmB0l7LpdWqqbp3", "id"=>75, "status"=>nil, "tile_name"=>"25", "tile_type"=>"warehouse", "updated_at"=>"2015-05-14T00:25:17.000Z", "x"=>6, "y"=>5, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrmB0l7LpdWqqbp4", "id"=>76, "status"=>nil, "tile_name"=>"26", "tile_type"=>"warehouse", "updated_at"=>"2015-05-14T00:25:17.000Z", "x"=>6, "y"=>6, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrmB0l7LpdWqqbp5", "id"=>77, "status"=>nil, "tile_name"=>"27", "tile_type"=>"warehouse", "updated_at"=>"2015-05-14T00:25:17.000Z", "x"=>6, "y"=>7, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrmCHvhjJHGwcEVh", "id"=>78, "status"=>nil, "tile_name"=>"28", "tile_type"=>"warehouse", "updated_at"=>"2015-05-14T00:25:17.000Z", "x"=>6, "y"=>8, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrmCHvhjJHGwcEVi", "id"=>79, "status"=>nil, "tile_name"=>"29", "tile_type"=>"warehouse", "updated_at"=>"2015-05-14T00:25:17.000Z", "x"=>6, "y"=>9, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrmCHvhjJHGwcEVj", "id"=>80, "status"=>nil, "tile_name"=>"30", "tile_type"=>"warehouse", "updated_at"=>"2015-05-14T00:25:17.000Z", "x"=>6, "y"=>10, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrmDtkkBxu323meI", "id"=>81, "status"=>nil, "tile_name"=>"31", "tile_type"=>"warehouse", "updated_at"=>"2015-05-14T00:25:17.000Z", "x"=>6, "y"=>11, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrmDtkkBxu323meJ", "id"=>82, "status"=>nil, "tile_name"=>"32", "tile_type"=>"warehouse", "updated_at"=>"2015-05-14T00:25:17.000Z", "x"=>-3, "y"=>2, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrmDtkkBxu323meK", "id"=>83, "status"=>nil, "tile_name"=>"33", "tile_type"=>"warehouse", "updated_at"=>"2015-05-14T00:25:17.000Z", "x"=>-3, "y"=>3, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrmDtkkBxu323meL", "id"=>84, "status"=>nil, "tile_name"=>"34", "tile_type"=>"warehouse", "updated_at"=>"2015-05-14T00:25:17.000Z", "x"=>-3, "y"=>4, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrmEL9k3C1fZTjtp", "id"=>85, "status"=>nil, "tile_name"=>"35", "tile_type"=>"warehouse", "updated_at"=>"2015-05-14T00:25:18.000Z", "x"=>-3, "y"=>5, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrmEL9k3C1fZTjtq", "id"=>86, "status"=>nil, "tile_name"=>"36", "tile_type"=>"warehouse", "updated_at"=>"2015-05-14T00:25:18.000Z", "x"=>-3, "y"=>6, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrmEL9k3C1fZTjtr", "id"=>87, "status"=>nil, "tile_name"=>"37", "tile_type"=>"warehouse", "updated_at"=>"2015-05-14T00:25:18.000Z", "x"=>-3, "y"=>7, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrmEL9k3C1fZTjts", "id"=>88, "status"=>nil, "tile_name"=>"38", "tile_type"=>"warehouse", "updated_at"=>"2015-05-14T00:25:18.000Z", "x"=>-3, "y"=>8, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrmFHMdLPhTTV9a_", "id"=>89, "status"=>nil, "tile_name"=>"39", "tile_type"=>"warehouse", "updated_at"=>"2015-05-14T00:25:18.000Z", "x"=>-3, "y"=>9, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrmFHMdLPhTTV9aa", "id"=>90, "status"=>nil, "tile_name"=>"40", "tile_type"=>"warehouse", "updated_at"=>"2015-05-14T00:25:18.000Z", "x"=>-3, "y"=>10, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrmFHMdLPhTTV9ab", "id"=>91, "status"=>nil, "tile_name"=>"41", "tile_type"=>"warehouse", "updated_at"=>"2015-05-14T00:25:18.000Z", "x"=>-3, "y"=>11, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrmFHMdLPhTTV9ac", "id"=>92, "status"=>nil, "tile_name"=>"42", "tile_type"=>"warehouse", "updated_at"=>"2015-05-14T00:25:18.000Z", "x"=>-3, "y"=>12, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>93, "status"=>nil, "tile_name"=>"0", "tile_type"=>"station", "updated_at"=>"2015-05-14T00:24:25.000Z", "x"=>-1, "y"=>0, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>94, "status"=>nil, "tile_name"=>"1", "tile_type"=>"station", "updated_at"=>"2015-05-14T00:24:25.000Z", "x"=>7, "y"=>0, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrlKPik7uP1vF5Gt", "id"=>95, "status"=>nil, "tile_name"=>"0", "tile_type"=>"scale", "updated_at"=>"2015-05-14T00:25:07.000Z", "x"=>0, "y"=>0, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-14T00:24:25.000Z", "deleted_at"=>nil, "fire_id"=>"-JpEnrlLfTuULR5lNHsl", "id"=>96, "status"=>nil, "tile_name"=>"1", "tile_type"=>"scale", "updated_at"=>"2015-05-14T00:25:07.000Z", "x"=>8, "y"=>0, "z"=>nil})
  ActiveRecord::Base.connection.reset_pk_sequence!('apiv1_tiles')

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-14T00:24:26.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-04T00:24:26.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>1, "material_description"=>"-10 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-1", "updated_at"=>"2015-05-14T00:24:26.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-14T00:24:26.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-05T00:24:26.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>2, "material_description"=>"-9 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-2", "updated_at"=>"2015-05-14T00:24:26.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-14T00:24:26.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-06T00:24:26.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>3, "material_description"=>"-8 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-3", "updated_at"=>"2015-05-14T00:24:26.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-14T00:24:26.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-07T00:24:26.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>4, "material_description"=>"-7 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-4", "updated_at"=>"2015-05-14T00:24:26.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-14T00:24:26.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-08T00:24:26.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>5, "material_description"=>"-6 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-5", "updated_at"=>"2015-05-14T00:24:26.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-14T00:24:26.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-09T00:24:26.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>6, "material_description"=>"-5 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-6", "updated_at"=>"2015-05-14T00:24:26.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-14T00:24:26.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-10T00:24:26.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>7, "material_description"=>"-4 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-7", "updated_at"=>"2015-05-14T00:24:26.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-14T00:24:26.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-11T00:24:26.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>8, "material_description"=>"-3 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-8", "updated_at"=>"2015-05-14T00:24:26.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-14T00:24:26.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-12T00:24:26.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>9, "material_description"=>"-2 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-9", "updated_at"=>"2015-05-14T00:24:26.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-14T00:24:26.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-13T00:24:26.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>10, "material_description"=>"-1 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-10", "updated_at"=>"2015-05-14T00:24:26.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-14T00:24:26.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-14T00:24:26.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>11, "material_description"=>"0 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-11", "updated_at"=>"2015-05-14T00:24:26.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-14T00:24:26.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-15T00:24:26.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>12, "material_description"=>"1 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-12", "updated_at"=>"2015-05-14T00:24:26.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-14T00:24:26.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-16T00:24:26.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>13, "material_description"=>"2 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-13", "updated_at"=>"2015-05-14T00:24:26.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-14T00:24:26.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-17T00:24:26.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>14, "material_description"=>"3 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-14", "updated_at"=>"2015-05-14T00:24:26.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-14T00:24:26.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-18T00:24:26.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>15, "material_description"=>"4 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-15", "updated_at"=>"2015-05-14T00:24:26.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-14T00:24:26.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-19T00:24:26.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>16, "material_description"=>"5 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-16", "updated_at"=>"2015-05-14T00:24:26.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-14T00:24:26.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-20T00:24:26.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>17, "material_description"=>"6 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-17", "updated_at"=>"2015-05-14T00:24:26.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-14T00:24:26.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-21T00:24:26.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>18, "material_description"=>"7 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-18", "updated_at"=>"2015-05-14T00:24:26.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-14T00:24:26.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-22T00:24:26.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>19, "material_description"=>"8 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-19", "updated_at"=>"2015-05-14T00:24:26.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-14T00:24:26.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-23T00:24:26.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>20, "material_description"=>"9 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-20", "updated_at"=>"2015-05-14T00:24:26.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-14T00:24:26.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-24T00:24:26.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>21, "material_description"=>"10 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-21", "updated_at"=>"2015-05-14T00:24:26.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"acceptance test company - 95191", "company_permalink"=>"ccptnc-tst-cmpn-95191", "created_at"=>"2015-05-14T00:33:12.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-14T00:33:12.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>22, "material_description"=>"desc - 95191", "material_permalink"=>nil, "notes"=>"notes - 95191", "permalink"=>"ccptnc-tst-cmpn-95191-22", "updated_at"=>"2015-05-14T00:33:12.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"acceptance test company - 46840", "company_permalink"=>"ccptnc-tst-cmpn-46840", "created_at"=>"2015-05-14T00:34:41.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-14T00:34:41.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>23, "material_description"=>"desc - 46840", "material_permalink"=>nil, "notes"=>"notes - 46840", "permalink"=>"ccptnc-tst-cmpn-46840-23", "updated_at"=>"2015-05-14T00:34:41.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"acceptance test company - 8934", "company_permalink"=>"ccptnc-tst-cmpn-8934", "created_at"=>"2015-05-14T00:35:35.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-14T00:35:35.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>24, "material_description"=>"desc - 8934", "material_permalink"=>nil, "notes"=>"notes - 8934", "permalink"=>"ccptnc-tst-cmpn-8934-24", "updated_at"=>"2015-05-14T00:35:35.000Z"})
  ActiveRecord::Base.connection.reset_pk_sequence!('apiv1_appointments')
end

SeedMigration::Migrator.bootstrap(20150330222204)
