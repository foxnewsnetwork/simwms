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

  Apiv1::User.create({"created_at"=>"2015-03-24T19:45:17.000Z", "crypted_password"=>"$2a$10$xV96wHcbTct5aktcbHqthOpK0H3Cqq1EfSF5cqDoYZSm20tgliA4C", "deleted_at"=>nil, "email"=>"manager@test.co", "permalink"=>nil, "remember_me_token"=>nil, "remember_me_token_expires_at"=>nil, "reset_password_email_sent_at"=>nil, "reset_password_token"=>nil, "reset_password_token_expires_at"=>nil, "role"=>"manager", "salt"=>"DPfYqz5SZhS6LzBYiMDc", "updated_at"=>"2015-03-24T19:45:17.000Z", "username"=>nil})

  Apiv1::User.create({"created_at"=>"2015-03-24T19:45:17.000Z", "crypted_password"=>"$2a$10$OKlGMGGb1ABCud96FlEPSeKdb4TBWQCnPTwzzSM1/aO6/nkrEm2wW", "deleted_at"=>nil, "email"=>"dockworker@test.co", "permalink"=>nil, "remember_me_token"=>nil, "remember_me_token_expires_at"=>nil, "reset_password_email_sent_at"=>nil, "reset_password_token"=>nil, "reset_password_token_expires_at"=>nil, "role"=>"dockworker", "salt"=>"2sMPnjqszGYyLpVCwe5T", "updated_at"=>"2015-03-24T19:45:17.000Z", "username"=>nil})

  Apiv1::User.create({"created_at"=>"2015-03-24T19:45:18.000Z", "crypted_password"=>"$2a$10$CrS7/P6oHGCDDN0oNeCoRuUveAxeWHd5qmYCXOuq063rKvJez4Unm", "deleted_at"=>nil, "email"=>"scalemaster@test.co", "permalink"=>nil, "remember_me_token"=>"DqSoa4zCTsaiT1ZsWyms", "remember_me_token_expires_at"=>"2015-04-01T00:50:46.000Z", "reset_password_email_sent_at"=>nil, "reset_password_token"=>nil, "reset_password_token_expires_at"=>nil, "role"=>"scalemaster", "salt"=>"1AgWyGcesXuvahtrhcES", "updated_at"=>"2015-03-24T19:45:18.000Z", "username"=>nil})

  Apiv1::User.create({"created_at"=>"2015-03-24T19:45:18.000Z", "crypted_password"=>"$2a$10$rm2ItTmBg7nA8EIWtBkw4e5kY0vZQBi5fQysKrk4KR2ttYY3uHoF6", "deleted_at"=>nil, "email"=>"logistics@test.co", "permalink"=>nil, "remember_me_token"=>nil, "remember_me_token_expires_at"=>nil, "reset_password_email_sent_at"=>nil, "reset_password_token"=>nil, "reset_password_token_expires_at"=>nil, "role"=>"logistics", "salt"=>"K6y758zWMiWaHtZtzkNN", "updated_at"=>"2015-03-24T19:45:18.000Z", "username"=>nil})
  ActiveRecord::Base.connection.reset_pk_sequence!('apiv1_users')

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>1, "status"=>"okay", "tile_name"=>"0", "tile_type"=>"barn", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>-2, "y"=>2, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>2, "status"=>"okay", "tile_name"=>"1", "tile_type"=>"barn", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>-2, "y"=>3, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>3, "status"=>"okay", "tile_name"=>"2", "tile_type"=>"barn", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>-2, "y"=>4, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>4, "status"=>"okay", "tile_name"=>"3", "tile_type"=>"barn", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>-2, "y"=>5, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>5, "status"=>"okay", "tile_name"=>"4", "tile_type"=>"barn", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>-2, "y"=>6, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>6, "status"=>"okay", "tile_name"=>"5", "tile_type"=>"barn", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>-2, "y"=>7, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>7, "status"=>"okay", "tile_name"=>"6", "tile_type"=>"barn", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>-2, "y"=>8, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>8, "status"=>"okay", "tile_name"=>"7", "tile_type"=>"barn", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>-2, "y"=>9, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>9, "status"=>"okay", "tile_name"=>"8", "tile_type"=>"barn", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>-2, "y"=>10, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>10, "status"=>"okay", "tile_name"=>"9", "tile_type"=>"barn", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>-2, "y"=>11, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>11, "status"=>"okay", "tile_name"=>"10", "tile_type"=>"barn", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>-2, "y"=>12, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>12, "status"=>"okay", "tile_name"=>"11", "tile_type"=>"barn", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>2, "y"=>6, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>13, "status"=>"okay", "tile_name"=>"12", "tile_type"=>"barn", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>2, "y"=>7, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>14, "status"=>"okay", "tile_name"=>"13", "tile_type"=>"barn", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>2, "y"=>8, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>15, "status"=>"okay", "tile_name"=>"14", "tile_type"=>"barn", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>2, "y"=>9, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>16, "status"=>"okay", "tile_name"=>"15", "tile_type"=>"barn", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>2, "y"=>10, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>17, "status"=>"okay", "tile_name"=>"16", "tile_type"=>"barn", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>2, "y"=>11, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>18, "status"=>nil, "tile_name"=>"0", "tile_type"=>"road", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>0, "y"=>1, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>19, "status"=>nil, "tile_name"=>"1", "tile_type"=>"road", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>0, "y"=>2, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>20, "status"=>nil, "tile_name"=>"2", "tile_type"=>"road", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>0, "y"=>3, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>21, "status"=>nil, "tile_name"=>"3", "tile_type"=>"road", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>0, "y"=>4, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>22, "status"=>nil, "tile_name"=>"4", "tile_type"=>"road", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>0, "y"=>5, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>23, "status"=>nil, "tile_name"=>"5", "tile_type"=>"road", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>0, "y"=>6, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>24, "status"=>nil, "tile_name"=>"6", "tile_type"=>"road", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>0, "y"=>7, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>25, "status"=>nil, "tile_name"=>"7", "tile_type"=>"road", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>0, "y"=>8, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>26, "status"=>nil, "tile_name"=>"8", "tile_type"=>"road", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>0, "y"=>9, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>27, "status"=>nil, "tile_name"=>"9", "tile_type"=>"road", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>0, "y"=>10, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>28, "status"=>nil, "tile_name"=>"10", "tile_type"=>"road", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>0, "y"=>11, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>29, "status"=>nil, "tile_name"=>"11", "tile_type"=>"road", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>0, "y"=>12, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>30, "status"=>nil, "tile_name"=>"12", "tile_type"=>"road", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>1, "y"=>12, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>31, "status"=>nil, "tile_name"=>"13", "tile_type"=>"road", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>2, "y"=>12, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>32, "status"=>nil, "tile_name"=>"14", "tile_type"=>"road", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>3, "y"=>12, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>33, "status"=>nil, "tile_name"=>"15", "tile_type"=>"road", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>4, "y"=>12, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>34, "status"=>nil, "tile_name"=>"16", "tile_type"=>"road", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>5, "y"=>12, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>35, "status"=>nil, "tile_name"=>"17", "tile_type"=>"road", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>6, "y"=>12, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>36, "status"=>nil, "tile_name"=>"18", "tile_type"=>"road", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>7, "y"=>12, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>37, "status"=>nil, "tile_name"=>"19", "tile_type"=>"road", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>8, "y"=>12, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>38, "status"=>nil, "tile_name"=>"20", "tile_type"=>"road", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>8, "y"=>1, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>39, "status"=>nil, "tile_name"=>"21", "tile_type"=>"road", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>8, "y"=>2, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>40, "status"=>nil, "tile_name"=>"22", "tile_type"=>"road", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>8, "y"=>3, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>41, "status"=>nil, "tile_name"=>"23", "tile_type"=>"road", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>8, "y"=>4, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>42, "status"=>nil, "tile_name"=>"24", "tile_type"=>"road", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>8, "y"=>5, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>43, "status"=>nil, "tile_name"=>"25", "tile_type"=>"road", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>8, "y"=>6, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>44, "status"=>nil, "tile_name"=>"26", "tile_type"=>"road", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>8, "y"=>7, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>45, "status"=>nil, "tile_name"=>"27", "tile_type"=>"road", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>8, "y"=>8, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>46, "status"=>nil, "tile_name"=>"28", "tile_type"=>"road", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>8, "y"=>9, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>47, "status"=>nil, "tile_name"=>"29", "tile_type"=>"road", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>8, "y"=>10, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>48, "status"=>nil, "tile_name"=>"30", "tile_type"=>"road", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>8, "y"=>11, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>49, "status"=>nil, "tile_name"=>"31", "tile_type"=>"road", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>8, "y"=>12, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>50, "status"=>nil, "tile_name"=>"0", "tile_type"=>"warehouse", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>3, "y"=>4, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>51, "status"=>nil, "tile_name"=>"1", "tile_type"=>"warehouse", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>3, "y"=>5, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>52, "status"=>nil, "tile_name"=>"2", "tile_type"=>"warehouse", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>3, "y"=>6, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>53, "status"=>nil, "tile_name"=>"3", "tile_type"=>"warehouse", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>3, "y"=>7, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>54, "status"=>nil, "tile_name"=>"4", "tile_type"=>"warehouse", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>3, "y"=>8, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>55, "status"=>nil, "tile_name"=>"5", "tile_type"=>"warehouse", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>3, "y"=>9, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>56, "status"=>nil, "tile_name"=>"6", "tile_type"=>"warehouse", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>3, "y"=>10, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>57, "status"=>nil, "tile_name"=>"7", "tile_type"=>"warehouse", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>3, "y"=>11, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>58, "status"=>nil, "tile_name"=>"8", "tile_type"=>"warehouse", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>4, "y"=>4, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>59, "status"=>nil, "tile_name"=>"9", "tile_type"=>"warehouse", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>4, "y"=>5, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>60, "status"=>nil, "tile_name"=>"10", "tile_type"=>"warehouse", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>4, "y"=>6, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>61, "status"=>nil, "tile_name"=>"11", "tile_type"=>"warehouse", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>4, "y"=>7, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>62, "status"=>nil, "tile_name"=>"12", "tile_type"=>"warehouse", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>4, "y"=>8, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>63, "status"=>nil, "tile_name"=>"13", "tile_type"=>"warehouse", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>4, "y"=>9, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>64, "status"=>nil, "tile_name"=>"14", "tile_type"=>"warehouse", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>4, "y"=>10, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>65, "status"=>nil, "tile_name"=>"15", "tile_type"=>"warehouse", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>4, "y"=>11, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>66, "status"=>nil, "tile_name"=>"16", "tile_type"=>"warehouse", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>5, "y"=>4, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>67, "status"=>nil, "tile_name"=>"17", "tile_type"=>"warehouse", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>5, "y"=>5, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>68, "status"=>nil, "tile_name"=>"18", "tile_type"=>"warehouse", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>5, "y"=>6, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>69, "status"=>nil, "tile_name"=>"19", "tile_type"=>"warehouse", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>5, "y"=>7, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>70, "status"=>nil, "tile_name"=>"20", "tile_type"=>"warehouse", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>5, "y"=>8, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>71, "status"=>nil, "tile_name"=>"21", "tile_type"=>"warehouse", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>5, "y"=>9, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>72, "status"=>nil, "tile_name"=>"22", "tile_type"=>"warehouse", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>5, "y"=>10, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>73, "status"=>nil, "tile_name"=>"23", "tile_type"=>"warehouse", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>5, "y"=>11, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>74, "status"=>nil, "tile_name"=>"24", "tile_type"=>"warehouse", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>6, "y"=>4, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>75, "status"=>nil, "tile_name"=>"25", "tile_type"=>"warehouse", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>6, "y"=>5, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>76, "status"=>nil, "tile_name"=>"26", "tile_type"=>"warehouse", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>6, "y"=>6, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>77, "status"=>nil, "tile_name"=>"27", "tile_type"=>"warehouse", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>6, "y"=>7, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>78, "status"=>nil, "tile_name"=>"28", "tile_type"=>"warehouse", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>6, "y"=>8, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>79, "status"=>nil, "tile_name"=>"29", "tile_type"=>"warehouse", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>6, "y"=>9, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>80, "status"=>nil, "tile_name"=>"30", "tile_type"=>"warehouse", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>6, "y"=>10, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>81, "status"=>nil, "tile_name"=>"31", "tile_type"=>"warehouse", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>6, "y"=>11, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>82, "status"=>nil, "tile_name"=>"32", "tile_type"=>"warehouse", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>-3, "y"=>2, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>83, "status"=>nil, "tile_name"=>"33", "tile_type"=>"warehouse", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>-3, "y"=>3, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>84, "status"=>nil, "tile_name"=>"34", "tile_type"=>"warehouse", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>-3, "y"=>4, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>85, "status"=>nil, "tile_name"=>"35", "tile_type"=>"warehouse", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>-3, "y"=>5, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>86, "status"=>nil, "tile_name"=>"36", "tile_type"=>"warehouse", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>-3, "y"=>6, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>87, "status"=>nil, "tile_name"=>"37", "tile_type"=>"warehouse", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>-3, "y"=>7, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>88, "status"=>nil, "tile_name"=>"38", "tile_type"=>"warehouse", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>-3, "y"=>8, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>89, "status"=>nil, "tile_name"=>"39", "tile_type"=>"warehouse", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>-3, "y"=>9, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>90, "status"=>nil, "tile_name"=>"40", "tile_type"=>"warehouse", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>-3, "y"=>10, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>91, "status"=>nil, "tile_name"=>"41", "tile_type"=>"warehouse", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>-3, "y"=>11, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>92, "status"=>nil, "tile_name"=>"42", "tile_type"=>"warehouse", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>-3, "y"=>12, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>93, "status"=>nil, "tile_name"=>"0", "tile_type"=>"station", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>-1, "y"=>0, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>94, "status"=>nil, "tile_name"=>"1", "tile_type"=>"station", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>7, "y"=>0, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>95, "status"=>nil, "tile_name"=>"0", "tile_type"=>"scale", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>0, "y"=>0, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-03-24T19:45:17.000Z", "deleted_at"=>nil, "id"=>96, "status"=>nil, "tile_name"=>"1", "tile_type"=>"scale", "updated_at"=>"2015-03-24T19:45:17.000Z", "x"=>8, "y"=>0, "z"=>nil})
  ActiveRecord::Base.connection.reset_pk_sequence!('apiv1_tiles')

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-03-25T19:10:03.000Z", "deleted_at"=>nil, "expected_at"=>"2015-03-15T19:10:03.000Z", "exploded_at"=>nil, "fulfilled_at"=>nil, "id"=>65, "material_description"=>"-10 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-65", "updated_at"=>"2015-03-25T19:10:03.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-03-25T19:10:03.000Z", "deleted_at"=>nil, "expected_at"=>"2015-03-16T19:10:03.000Z", "exploded_at"=>nil, "fulfilled_at"=>nil, "id"=>66, "material_description"=>"-9 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-66", "updated_at"=>"2015-03-25T19:10:03.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-03-25T19:10:03.000Z", "deleted_at"=>nil, "expected_at"=>"2015-03-17T19:10:03.000Z", "exploded_at"=>nil, "fulfilled_at"=>nil, "id"=>67, "material_description"=>"-8 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-67", "updated_at"=>"2015-03-25T19:10:03.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-03-25T19:10:03.000Z", "deleted_at"=>nil, "expected_at"=>"2015-03-18T19:10:03.000Z", "exploded_at"=>nil, "fulfilled_at"=>nil, "id"=>68, "material_description"=>"-7 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-68", "updated_at"=>"2015-03-25T19:10:03.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-03-25T19:10:03.000Z", "deleted_at"=>nil, "expected_at"=>"2015-03-19T19:10:03.000Z", "exploded_at"=>nil, "fulfilled_at"=>nil, "id"=>69, "material_description"=>"-6 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-69", "updated_at"=>"2015-03-25T19:10:03.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-03-25T19:10:03.000Z", "deleted_at"=>nil, "expected_at"=>"2015-03-20T19:10:03.000Z", "exploded_at"=>nil, "fulfilled_at"=>nil, "id"=>70, "material_description"=>"-5 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-70", "updated_at"=>"2015-03-25T19:10:03.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-03-25T19:10:03.000Z", "deleted_at"=>nil, "expected_at"=>"2015-03-21T19:10:03.000Z", "exploded_at"=>nil, "fulfilled_at"=>nil, "id"=>71, "material_description"=>"-4 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-71", "updated_at"=>"2015-03-25T19:10:03.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-03-25T19:10:03.000Z", "deleted_at"=>nil, "expected_at"=>"2015-03-22T19:10:03.000Z", "exploded_at"=>nil, "fulfilled_at"=>nil, "id"=>72, "material_description"=>"-3 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-72", "updated_at"=>"2015-03-25T19:10:03.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-03-25T19:10:03.000Z", "deleted_at"=>nil, "expected_at"=>"2015-03-23T19:10:03.000Z", "exploded_at"=>nil, "fulfilled_at"=>nil, "id"=>73, "material_description"=>"-2 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-73", "updated_at"=>"2015-03-25T19:10:03.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-03-25T19:10:03.000Z", "deleted_at"=>nil, "expected_at"=>"2015-03-24T19:10:03.000Z", "exploded_at"=>nil, "fulfilled_at"=>nil, "id"=>74, "material_description"=>"-1 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-74", "updated_at"=>"2015-03-25T19:10:03.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-03-25T19:10:03.000Z", "deleted_at"=>nil, "expected_at"=>"2015-03-25T19:10:03.000Z", "exploded_at"=>nil, "fulfilled_at"=>nil, "id"=>75, "material_description"=>"0 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-75", "updated_at"=>"2015-03-25T19:10:03.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-03-25T19:10:03.000Z", "deleted_at"=>nil, "expected_at"=>"2015-03-26T19:10:03.000Z", "exploded_at"=>nil, "fulfilled_at"=>nil, "id"=>76, "material_description"=>"1 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-76", "updated_at"=>"2015-03-25T19:10:03.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-03-25T19:10:03.000Z", "deleted_at"=>nil, "expected_at"=>"2015-03-27T19:10:03.000Z", "exploded_at"=>nil, "fulfilled_at"=>nil, "id"=>77, "material_description"=>"2 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-77", "updated_at"=>"2015-03-25T19:10:03.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-03-25T19:10:03.000Z", "deleted_at"=>nil, "expected_at"=>"2015-03-28T19:10:03.000Z", "exploded_at"=>nil, "fulfilled_at"=>nil, "id"=>78, "material_description"=>"3 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-78", "updated_at"=>"2015-03-25T19:10:03.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-03-25T19:10:03.000Z", "deleted_at"=>nil, "expected_at"=>"2015-03-29T19:10:03.000Z", "exploded_at"=>nil, "fulfilled_at"=>nil, "id"=>79, "material_description"=>"4 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-79", "updated_at"=>"2015-03-25T19:10:03.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-03-25T19:10:03.000Z", "deleted_at"=>nil, "expected_at"=>"2015-03-30T19:10:03.000Z", "exploded_at"=>nil, "fulfilled_at"=>nil, "id"=>80, "material_description"=>"5 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-80", "updated_at"=>"2015-03-25T19:10:03.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-03-25T19:10:03.000Z", "deleted_at"=>nil, "expected_at"=>"2015-03-31T19:10:03.000Z", "exploded_at"=>nil, "fulfilled_at"=>nil, "id"=>81, "material_description"=>"6 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-81", "updated_at"=>"2015-03-25T19:10:03.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-03-25T19:10:03.000Z", "deleted_at"=>nil, "expected_at"=>"2015-04-01T19:10:03.000Z", "exploded_at"=>nil, "fulfilled_at"=>nil, "id"=>82, "material_description"=>"7 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-82", "updated_at"=>"2015-03-25T19:10:03.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-03-25T19:10:03.000Z", "deleted_at"=>nil, "expected_at"=>"2015-04-02T19:10:03.000Z", "exploded_at"=>nil, "fulfilled_at"=>nil, "id"=>83, "material_description"=>"8 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-83", "updated_at"=>"2015-03-25T19:10:03.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-03-25T19:10:03.000Z", "deleted_at"=>nil, "expected_at"=>"2015-04-03T19:10:03.000Z", "exploded_at"=>nil, "fulfilled_at"=>nil, "id"=>84, "material_description"=>"9 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-84", "updated_at"=>"2015-03-25T19:10:03.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-03-25T19:10:03.000Z", "deleted_at"=>nil, "expected_at"=>"2015-04-04T19:10:03.000Z", "exploded_at"=>nil, "fulfilled_at"=>nil, "id"=>85, "material_description"=>"10 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-85", "updated_at"=>"2015-03-25T19:10:03.000Z"})
  ActiveRecord::Base.connection.reset_pk_sequence!('apiv1_appointments')
end

SeedMigration::Migrator.bootstrap(20150330222204)
