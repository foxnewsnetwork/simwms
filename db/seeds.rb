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

  Apiv1::User.create({"created_at"=>"2015-05-05T16:39:49.000Z", "crypted_password"=>"$2a$10$4q./jSFp8/PeqjqMhxSjlemVhRhF6kQJ.kSYbCDrM.Y76Krt/cB0S", "deleted_at"=>nil, "email"=>"manager@test.co", "permalink"=>nil, "remember_me_token"=>nil, "remember_me_token_expires_at"=>nil, "reset_password_email_sent_at"=>nil, "reset_password_token"=>nil, "reset_password_token_expires_at"=>nil, "role"=>"manager", "salt"=>"FMjxbK8RipAtvswVNMzd", "updated_at"=>"2015-05-05T16:39:49.000Z", "username"=>nil})

  Apiv1::User.create({"created_at"=>"2015-05-05T16:39:49.000Z", "crypted_password"=>"$2a$10$inM2h5UfD6.PRd5.FISgBu.jdI9pi7YTzwFxBbplUOkMiOOGKj3Ou", "deleted_at"=>nil, "email"=>"dockworker@test.co", "permalink"=>nil, "remember_me_token"=>nil, "remember_me_token_expires_at"=>nil, "reset_password_email_sent_at"=>nil, "reset_password_token"=>nil, "reset_password_token_expires_at"=>nil, "role"=>"dockworker", "salt"=>"YpqZmiCHPZQjxN9uEZK5", "updated_at"=>"2015-05-05T16:39:49.000Z", "username"=>nil})

  Apiv1::User.create({"created_at"=>"2015-05-05T16:39:49.000Z", "crypted_password"=>"$2a$10$5s6P6Is2z1IlhcbSZno6/OWvHjsHxT8z5AxHuG/LfA29QaQVASy7.", "deleted_at"=>nil, "email"=>"scalemaster@test.co", "permalink"=>nil, "remember_me_token"=>nil, "remember_me_token_expires_at"=>nil, "reset_password_email_sent_at"=>nil, "reset_password_token"=>nil, "reset_password_token_expires_at"=>nil, "role"=>"scalemaster", "salt"=>"XFxkRSHpTpdYkbMvorps", "updated_at"=>"2015-05-05T16:39:49.000Z", "username"=>nil})

  Apiv1::User.create({"created_at"=>"2015-05-05T16:39:50.000Z", "crypted_password"=>"$2a$10$7wlXd8eED4iVTuW9XpVJquk8/D4bLXqnMUH5g7T09bAyRBxR72GKq", "deleted_at"=>nil, "email"=>"logistics@test.co", "permalink"=>nil, "remember_me_token"=>nil, "remember_me_token_expires_at"=>nil, "reset_password_email_sent_at"=>nil, "reset_password_token"=>nil, "reset_password_token_expires_at"=>nil, "role"=>"logistics", "salt"=>"S8MvUfvT6kpGdRT5yEtZ", "updated_at"=>"2015-05-05T16:39:50.000Z", "username"=>nil})
  ActiveRecord::Base.connection.reset_pk_sequence!('apiv1_users')

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_AMXMoHi1_n0rx-qO", "id"=>1, "status"=>"okay", "tile_name"=>"0", "tile_type"=>"barn", "updated_at"=>"2015-05-05T17:44:07.000Z", "x"=>-2, "y"=>2, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_AMXWrsKT9r--s4JX", "id"=>2, "status"=>"okay", "tile_name"=>"1", "tile_type"=>"barn", "updated_at"=>"2015-05-05T17:44:07.000Z", "x"=>-2, "y"=>3, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_AMXcMVIncvRgLzbR", "id"=>3, "status"=>"okay", "tile_name"=>"2", "tile_type"=>"barn", "updated_at"=>"2015-05-05T17:44:07.000Z", "x"=>-2, "y"=>4, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_AMXmX-Gca6y7ffZd", "id"=>4, "status"=>"okay", "tile_name"=>"3", "tile_type"=>"barn", "updated_at"=>"2015-05-05T17:44:08.000Z", "x"=>-2, "y"=>5, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_AMXhcY-TnJpwnNj-", "id"=>5, "status"=>"okay", "tile_name"=>"4", "tile_type"=>"barn", "updated_at"=>"2015-05-05T17:44:08.000Z", "x"=>-2, "y"=>6, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_AMY446EQ1yazXket", "id"=>6, "status"=>"okay", "tile_name"=>"5", "tile_type"=>"barn", "updated_at"=>"2015-05-05T17:44:08.000Z", "x"=>-2, "y"=>7, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_AMXtfvL5t1W2HjgF", "id"=>7, "status"=>"okay", "tile_name"=>"6", "tile_type"=>"barn", "updated_at"=>"2015-05-05T17:44:08.000Z", "x"=>-2, "y"=>8, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_AMXzvNpZT8l4vOqK", "id"=>8, "status"=>"okay", "tile_name"=>"7", "tile_type"=>"barn", "updated_at"=>"2015-05-05T17:44:08.000Z", "x"=>-2, "y"=>9, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_AMYGjM7AAO5LkViK", "id"=>9, "status"=>"okay", "tile_name"=>"8", "tile_type"=>"barn", "updated_at"=>"2015-05-05T17:44:08.000Z", "x"=>-2, "y"=>10, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_AMYKTS7pJE7-Jnxy", "id"=>10, "status"=>"okay", "tile_name"=>"9", "tile_type"=>"barn", "updated_at"=>"2015-05-05T17:44:08.000Z", "x"=>-2, "y"=>11, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_AMYAOx5Ly1nulcpu", "id"=>11, "status"=>"okay", "tile_name"=>"10", "tile_type"=>"barn", "updated_at"=>"2015-05-05T17:44:08.000Z", "x"=>-2, "y"=>12, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_AMYWFwjBzyhXHOlz", "id"=>12, "status"=>"okay", "tile_name"=>"11", "tile_type"=>"barn", "updated_at"=>"2015-05-05T17:44:08.000Z", "x"=>2, "y"=>6, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_AMYP69lyaAV0VpoP", "id"=>13, "status"=>"okay", "tile_name"=>"12", "tile_type"=>"barn", "updated_at"=>"2015-05-05T17:44:08.000Z", "x"=>2, "y"=>7, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_AMYjvRmGOgWve12F", "id"=>14, "status"=>"okay", "tile_name"=>"13", "tile_type"=>"barn", "updated_at"=>"2015-05-05T17:44:08.000Z", "x"=>2, "y"=>8, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_AMYn2ZQmp6PcuAX-", "id"=>15, "status"=>"okay", "tile_name"=>"14", "tile_type"=>"barn", "updated_at"=>"2015-05-05T17:44:08.000Z", "x"=>2, "y"=>9, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_AMYteWtQDAmiJAXh", "id"=>16, "status"=>"okay", "tile_name"=>"15", "tile_type"=>"barn", "updated_at"=>"2015-05-05T17:44:08.000Z", "x"=>2, "y"=>10, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_AMYqkvaka8BOcj2Y", "id"=>17, "status"=>"okay", "tile_name"=>"16", "tile_type"=>"barn", "updated_at"=>"2015-05-05T17:44:08.000Z", "x"=>2, "y"=>11, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>18, "status"=>nil, "tile_name"=>"0", "tile_type"=>"road", "updated_at"=>"2015-05-05T16:39:49.000Z", "x"=>0, "y"=>1, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>19, "status"=>nil, "tile_name"=>"1", "tile_type"=>"road", "updated_at"=>"2015-05-05T16:39:49.000Z", "x"=>0, "y"=>2, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>20, "status"=>nil, "tile_name"=>"2", "tile_type"=>"road", "updated_at"=>"2015-05-05T16:39:49.000Z", "x"=>0, "y"=>3, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>21, "status"=>nil, "tile_name"=>"3", "tile_type"=>"road", "updated_at"=>"2015-05-05T16:39:49.000Z", "x"=>0, "y"=>4, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>22, "status"=>nil, "tile_name"=>"4", "tile_type"=>"road", "updated_at"=>"2015-05-05T16:39:49.000Z", "x"=>0, "y"=>5, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>23, "status"=>nil, "tile_name"=>"5", "tile_type"=>"road", "updated_at"=>"2015-05-05T16:39:49.000Z", "x"=>0, "y"=>6, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>24, "status"=>nil, "tile_name"=>"6", "tile_type"=>"road", "updated_at"=>"2015-05-05T16:39:49.000Z", "x"=>0, "y"=>7, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>25, "status"=>nil, "tile_name"=>"7", "tile_type"=>"road", "updated_at"=>"2015-05-05T16:39:49.000Z", "x"=>0, "y"=>8, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>26, "status"=>nil, "tile_name"=>"8", "tile_type"=>"road", "updated_at"=>"2015-05-05T16:39:49.000Z", "x"=>0, "y"=>9, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>27, "status"=>nil, "tile_name"=>"9", "tile_type"=>"road", "updated_at"=>"2015-05-05T16:39:49.000Z", "x"=>0, "y"=>10, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>28, "status"=>nil, "tile_name"=>"10", "tile_type"=>"road", "updated_at"=>"2015-05-05T16:39:49.000Z", "x"=>0, "y"=>11, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>29, "status"=>nil, "tile_name"=>"11", "tile_type"=>"road", "updated_at"=>"2015-05-05T16:39:49.000Z", "x"=>0, "y"=>12, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>30, "status"=>nil, "tile_name"=>"12", "tile_type"=>"road", "updated_at"=>"2015-05-05T16:39:49.000Z", "x"=>1, "y"=>12, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>31, "status"=>nil, "tile_name"=>"13", "tile_type"=>"road", "updated_at"=>"2015-05-05T16:39:49.000Z", "x"=>2, "y"=>12, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>32, "status"=>nil, "tile_name"=>"14", "tile_type"=>"road", "updated_at"=>"2015-05-05T16:39:49.000Z", "x"=>3, "y"=>12, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>33, "status"=>nil, "tile_name"=>"15", "tile_type"=>"road", "updated_at"=>"2015-05-05T16:39:49.000Z", "x"=>4, "y"=>12, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>34, "status"=>nil, "tile_name"=>"16", "tile_type"=>"road", "updated_at"=>"2015-05-05T16:39:49.000Z", "x"=>5, "y"=>12, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>35, "status"=>nil, "tile_name"=>"17", "tile_type"=>"road", "updated_at"=>"2015-05-05T16:39:49.000Z", "x"=>6, "y"=>12, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>36, "status"=>nil, "tile_name"=>"18", "tile_type"=>"road", "updated_at"=>"2015-05-05T16:39:49.000Z", "x"=>7, "y"=>12, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>37, "status"=>nil, "tile_name"=>"19", "tile_type"=>"road", "updated_at"=>"2015-05-05T16:39:49.000Z", "x"=>8, "y"=>12, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>38, "status"=>nil, "tile_name"=>"20", "tile_type"=>"road", "updated_at"=>"2015-05-05T16:39:49.000Z", "x"=>8, "y"=>1, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>39, "status"=>nil, "tile_name"=>"21", "tile_type"=>"road", "updated_at"=>"2015-05-05T16:39:49.000Z", "x"=>8, "y"=>2, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>40, "status"=>nil, "tile_name"=>"22", "tile_type"=>"road", "updated_at"=>"2015-05-05T16:39:49.000Z", "x"=>8, "y"=>3, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>41, "status"=>nil, "tile_name"=>"23", "tile_type"=>"road", "updated_at"=>"2015-05-05T16:39:49.000Z", "x"=>8, "y"=>4, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>42, "status"=>nil, "tile_name"=>"24", "tile_type"=>"road", "updated_at"=>"2015-05-05T16:39:49.000Z", "x"=>8, "y"=>5, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>43, "status"=>nil, "tile_name"=>"25", "tile_type"=>"road", "updated_at"=>"2015-05-05T16:39:49.000Z", "x"=>8, "y"=>6, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>44, "status"=>nil, "tile_name"=>"26", "tile_type"=>"road", "updated_at"=>"2015-05-05T16:39:49.000Z", "x"=>8, "y"=>7, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>45, "status"=>nil, "tile_name"=>"27", "tile_type"=>"road", "updated_at"=>"2015-05-05T16:39:49.000Z", "x"=>8, "y"=>8, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>46, "status"=>nil, "tile_name"=>"28", "tile_type"=>"road", "updated_at"=>"2015-05-05T16:39:49.000Z", "x"=>8, "y"=>9, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>47, "status"=>nil, "tile_name"=>"29", "tile_type"=>"road", "updated_at"=>"2015-05-05T16:39:49.000Z", "x"=>8, "y"=>10, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>48, "status"=>nil, "tile_name"=>"30", "tile_type"=>"road", "updated_at"=>"2015-05-05T16:39:49.000Z", "x"=>8, "y"=>11, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>49, "status"=>nil, "tile_name"=>"31", "tile_type"=>"road", "updated_at"=>"2015-05-05T16:39:49.000Z", "x"=>8, "y"=>12, "z"=>0})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_G4TRqxH5Ywmyh9gR", "id"=>50, "status"=>nil, "tile_name"=>"0", "tile_type"=>"warehouse", "updated_at"=>"2015-05-05T18:09:05.000Z", "x"=>3, "y"=>4, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_G4TTP0Ok9ckRjysH", "id"=>51, "status"=>nil, "tile_name"=>"1", "tile_type"=>"warehouse", "updated_at"=>"2015-05-05T18:09:06.000Z", "x"=>3, "y"=>5, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_G4TTP0Ok9ckRjysI", "id"=>52, "status"=>nil, "tile_name"=>"2", "tile_type"=>"warehouse", "updated_at"=>"2015-05-05T18:09:06.000Z", "x"=>3, "y"=>6, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_G4TUWL1hyNuOSM2i", "id"=>53, "status"=>nil, "tile_name"=>"3", "tile_type"=>"warehouse", "updated_at"=>"2015-05-05T18:09:06.000Z", "x"=>3, "y"=>7, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_G4TUWL1hyNuOSM2j", "id"=>54, "status"=>nil, "tile_name"=>"4", "tile_type"=>"warehouse", "updated_at"=>"2015-05-05T18:09:06.000Z", "x"=>3, "y"=>8, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_G4TUWL1hyNuOSM2k", "id"=>55, "status"=>nil, "tile_name"=>"5", "tile_type"=>"warehouse", "updated_at"=>"2015-05-05T18:09:06.000Z", "x"=>3, "y"=>9, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_G4TVrVqyXRkJg8gq", "id"=>56, "status"=>nil, "tile_name"=>"6", "tile_type"=>"warehouse", "updated_at"=>"2015-05-05T18:09:06.000Z", "x"=>3, "y"=>10, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_G4TVrVqyXRkJg8gr", "id"=>57, "status"=>nil, "tile_name"=>"7", "tile_type"=>"warehouse", "updated_at"=>"2015-05-05T18:09:06.000Z", "x"=>3, "y"=>11, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_G4TVrVqyXRkJg8gs", "id"=>58, "status"=>nil, "tile_name"=>"8", "tile_type"=>"warehouse", "updated_at"=>"2015-05-05T18:09:06.000Z", "x"=>4, "y"=>4, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_G4TW3mLlbG5VMgwM", "id"=>59, "status"=>nil, "tile_name"=>"9", "tile_type"=>"warehouse", "updated_at"=>"2015-05-05T18:09:06.000Z", "x"=>4, "y"=>5, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_G4TW3mLlbG5VMgwN", "id"=>60, "status"=>nil, "tile_name"=>"10", "tile_type"=>"warehouse", "updated_at"=>"2015-05-05T18:09:07.000Z", "x"=>4, "y"=>6, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_G4TXZINdh6kDuPc9", "id"=>61, "status"=>nil, "tile_name"=>"11", "tile_type"=>"warehouse", "updated_at"=>"2015-05-05T18:09:07.000Z", "x"=>4, "y"=>7, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_G4TXZINdh6kDuPcA", "id"=>62, "status"=>nil, "tile_name"=>"12", "tile_type"=>"warehouse", "updated_at"=>"2015-05-05T18:09:07.000Z", "x"=>4, "y"=>8, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_G4TY72xMot0KNKGC", "id"=>63, "status"=>nil, "tile_name"=>"13", "tile_type"=>"warehouse", "updated_at"=>"2015-05-05T18:09:07.000Z", "x"=>4, "y"=>9, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_G4TZEWWvby1Eb6mW", "id"=>64, "status"=>nil, "tile_name"=>"14", "tile_type"=>"warehouse", "updated_at"=>"2015-05-05T18:09:07.000Z", "x"=>4, "y"=>10, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_G4T_yApg5hBDUi40", "id"=>65, "status"=>nil, "tile_name"=>"15", "tile_type"=>"warehouse", "updated_at"=>"2015-05-05T18:09:07.000Z", "x"=>4, "y"=>11, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_G4TaDi6H06_IBj3Z", "id"=>66, "status"=>nil, "tile_name"=>"16", "tile_type"=>"warehouse", "updated_at"=>"2015-05-05T18:09:07.000Z", "x"=>5, "y"=>4, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_G4TbEhaiNLis3i6J", "id"=>67, "status"=>nil, "tile_name"=>"17", "tile_type"=>"warehouse", "updated_at"=>"2015-05-05T18:09:07.000Z", "x"=>5, "y"=>5, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_G4Tchyw-XGp8Swjp", "id"=>68, "status"=>nil, "tile_name"=>"18", "tile_type"=>"warehouse", "updated_at"=>"2015-05-05T18:09:07.000Z", "x"=>5, "y"=>6, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_G4TdgH1bqRoaugXY", "id"=>69, "status"=>nil, "tile_name"=>"19", "tile_type"=>"warehouse", "updated_at"=>"2015-05-05T18:09:07.000Z", "x"=>5, "y"=>7, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_G4TfNByyzRUALBjd", "id"=>70, "status"=>nil, "tile_name"=>"20", "tile_type"=>"warehouse", "updated_at"=>"2015-05-05T18:09:08.000Z", "x"=>5, "y"=>8, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_G4TfNByyzRUALBje", "id"=>71, "status"=>nil, "tile_name"=>"21", "tile_type"=>"warehouse", "updated_at"=>"2015-05-05T18:09:08.000Z", "x"=>5, "y"=>9, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_G4TfNByyzRUALBjf", "id"=>72, "status"=>nil, "tile_name"=>"22", "tile_type"=>"warehouse", "updated_at"=>"2015-05-05T18:09:08.000Z", "x"=>5, "y"=>10, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_G4TgdT-CPod_VX94", "id"=>73, "status"=>nil, "tile_name"=>"23", "tile_type"=>"warehouse", "updated_at"=>"2015-05-05T18:09:08.000Z", "x"=>5, "y"=>11, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_G4Thcp6uFS0tLJa0", "id"=>74, "status"=>nil, "tile_name"=>"24", "tile_type"=>"warehouse", "updated_at"=>"2015-05-05T18:09:08.000Z", "x"=>6, "y"=>4, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_G4Thcp6uFS0tLJa1", "id"=>75, "status"=>nil, "tile_name"=>"25", "tile_type"=>"warehouse", "updated_at"=>"2015-05-05T18:09:08.000Z", "x"=>6, "y"=>5, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_G4Thcp6uFS0tLJa2", "id"=>76, "status"=>nil, "tile_name"=>"26", "tile_type"=>"warehouse", "updated_at"=>"2015-05-05T18:09:08.000Z", "x"=>6, "y"=>6, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_G4Ti6Gr39Bx5LvVI", "id"=>77, "status"=>nil, "tile_name"=>"27", "tile_type"=>"warehouse", "updated_at"=>"2015-05-05T18:09:08.000Z", "x"=>6, "y"=>7, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_G4Ti6Gr39Bx5LvVJ", "id"=>78, "status"=>nil, "tile_name"=>"28", "tile_type"=>"warehouse", "updated_at"=>"2015-05-05T18:09:08.000Z", "x"=>6, "y"=>8, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_G4TjOm7BFxhcx07h", "id"=>79, "status"=>nil, "tile_name"=>"29", "tile_type"=>"warehouse", "updated_at"=>"2015-05-05T18:09:08.000Z", "x"=>6, "y"=>9, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_G4TjOm7BFxhcx07i", "id"=>80, "status"=>nil, "tile_name"=>"30", "tile_type"=>"warehouse", "updated_at"=>"2015-05-05T18:09:08.000Z", "x"=>6, "y"=>10, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_G4TjOm7BFxhcx07j", "id"=>81, "status"=>nil, "tile_name"=>"31", "tile_type"=>"warehouse", "updated_at"=>"2015-05-05T18:09:08.000Z", "x"=>6, "y"=>11, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_G4TkgsDMHgO4qIkC", "id"=>82, "status"=>nil, "tile_name"=>"32", "tile_type"=>"warehouse", "updated_at"=>"2015-05-05T18:09:09.000Z", "x"=>-3, "y"=>2, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_G4TkgsDMHgO4qIkD", "id"=>83, "status"=>nil, "tile_name"=>"33", "tile_type"=>"warehouse", "updated_at"=>"2015-05-05T18:09:09.000Z", "x"=>-3, "y"=>3, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_G4TkgsDMHgO4qIkE", "id"=>84, "status"=>nil, "tile_name"=>"34", "tile_type"=>"warehouse", "updated_at"=>"2015-05-05T18:09:09.000Z", "x"=>-3, "y"=>4, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_G4TlPujoDCrJtEVE", "id"=>85, "status"=>nil, "tile_name"=>"35", "tile_type"=>"warehouse", "updated_at"=>"2015-05-05T18:09:09.000Z", "x"=>-3, "y"=>5, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_G4TlPujoDCrJtEVF", "id"=>86, "status"=>nil, "tile_name"=>"36", "tile_type"=>"warehouse", "updated_at"=>"2015-05-05T18:09:09.000Z", "x"=>-3, "y"=>6, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_G4TmKXTe38EvmiMZ", "id"=>87, "status"=>nil, "tile_name"=>"37", "tile_type"=>"warehouse", "updated_at"=>"2015-05-05T18:09:09.000Z", "x"=>-3, "y"=>7, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_G4TnhP7El_1xCqHZ", "id"=>88, "status"=>nil, "tile_name"=>"38", "tile_type"=>"warehouse", "updated_at"=>"2015-05-05T18:09:09.000Z", "x"=>-3, "y"=>8, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_G4TnhP7El_1xCqH_", "id"=>89, "status"=>nil, "tile_name"=>"39", "tile_type"=>"warehouse", "updated_at"=>"2015-05-05T18:09:09.000Z", "x"=>-3, "y"=>9, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_G4TnhP7El_1xCqHa", "id"=>90, "status"=>nil, "tile_name"=>"40", "tile_type"=>"warehouse", "updated_at"=>"2015-05-05T18:09:09.000Z", "x"=>-3, "y"=>10, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_G4TpKstVbun4fyJN", "id"=>91, "status"=>nil, "tile_name"=>"41", "tile_type"=>"warehouse", "updated_at"=>"2015-05-05T18:09:09.000Z", "x"=>-3, "y"=>11, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-Jo_G4TpKstVbun4fyJO", "id"=>92, "status"=>nil, "tile_name"=>"42", "tile_type"=>"warehouse", "updated_at"=>"2015-05-05T18:09:09.000Z", "x"=>-3, "y"=>12, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>93, "status"=>nil, "tile_name"=>"0", "tile_type"=>"station", "updated_at"=>"2015-05-05T16:39:49.000Z", "x"=>-1, "y"=>0, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>nil, "id"=>94, "status"=>nil, "tile_name"=>"1", "tile_type"=>"station", "updated_at"=>"2015-05-05T16:39:49.000Z", "x"=>7, "y"=>0, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-JoZynl_K9ZPuuDZqRyw", "id"=>95, "status"=>nil, "tile_name"=>"0", "tile_type"=>"scale", "updated_at"=>"2015-05-05T16:49:14.000Z", "x"=>0, "y"=>0, "z"=>nil})

  Apiv1::Tile.create({"created_at"=>"2015-05-05T16:39:49.000Z", "deleted_at"=>nil, "fire_id"=>"-JoZynlMw6oAY8qeMo3D", "id"=>96, "status"=>nil, "tile_name"=>"1", "tile_type"=>"scale", "updated_at"=>"2015-05-05T16:49:14.000Z", "x"=>8, "y"=>0, "z"=>nil})
  ActiveRecord::Base.connection.reset_pk_sequence!('apiv1_tiles')

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-05T16:39:50.000Z", "deleted_at"=>nil, "expected_at"=>"2015-04-25T16:39:50.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>1, "material_description"=>"-10 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-1", "updated_at"=>"2015-05-05T16:39:50.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-05T16:39:50.000Z", "deleted_at"=>nil, "expected_at"=>"2015-04-26T16:39:50.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>2, "material_description"=>"-9 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-2", "updated_at"=>"2015-05-05T16:39:50.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-05T16:39:50.000Z", "deleted_at"=>nil, "expected_at"=>"2015-04-27T16:39:50.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>3, "material_description"=>"-8 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-3", "updated_at"=>"2015-05-05T16:39:50.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-05T16:39:50.000Z", "deleted_at"=>nil, "expected_at"=>"2015-04-28T16:39:50.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>4, "material_description"=>"-7 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-4", "updated_at"=>"2015-05-05T16:39:50.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-05T16:39:50.000Z", "deleted_at"=>nil, "expected_at"=>"2015-04-29T16:39:50.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>5, "material_description"=>"-6 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-5", "updated_at"=>"2015-05-05T16:39:50.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-05T16:39:50.000Z", "deleted_at"=>nil, "expected_at"=>"2015-04-30T16:39:50.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>6, "material_description"=>"-5 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-6", "updated_at"=>"2015-05-05T16:39:50.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-05T16:39:50.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-01T16:39:50.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>7, "material_description"=>"-4 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-7", "updated_at"=>"2015-05-05T16:39:50.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-05T16:39:50.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-02T16:39:50.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>8, "material_description"=>"-3 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-8", "updated_at"=>"2015-05-05T16:39:50.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-05T16:39:50.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-03T16:39:50.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>9, "material_description"=>"-2 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-9", "updated_at"=>"2015-05-05T16:39:50.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-05T16:39:50.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-04T16:39:50.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>10, "material_description"=>"-1 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-10", "updated_at"=>"2015-05-05T16:39:50.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-05T16:39:50.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-05T16:39:50.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>11, "material_description"=>"0 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-11", "updated_at"=>"2015-05-05T16:39:50.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-05T16:39:50.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-06T16:39:50.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>12, "material_description"=>"1 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-12", "updated_at"=>"2015-05-05T16:39:50.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-05T16:39:50.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-07T16:39:50.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>13, "material_description"=>"2 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-13", "updated_at"=>"2015-05-05T16:39:50.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-05T16:39:50.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-08T16:39:50.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>14, "material_description"=>"3 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-14", "updated_at"=>"2015-05-05T16:39:50.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-05T16:39:50.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-09T16:39:50.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>15, "material_description"=>"4 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-15", "updated_at"=>"2015-05-05T16:39:50.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-05T16:39:50.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-10T16:39:50.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>16, "material_description"=>"5 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-16", "updated_at"=>"2015-05-05T16:39:50.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-05T16:39:50.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-11T16:39:50.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>17, "material_description"=>"6 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-17", "updated_at"=>"2015-05-05T16:39:50.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-05T16:39:50.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-12T16:39:50.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>18, "material_description"=>"7 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-18", "updated_at"=>"2015-05-05T16:39:50.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-05T16:39:50.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-13T16:39:50.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>19, "material_description"=>"8 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-19", "updated_at"=>"2015-05-05T16:39:50.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-05T16:39:50.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-14T16:39:50.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>20, "material_description"=>"9 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-20", "updated_at"=>"2015-05-05T16:39:50.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"Seed Test Company", "company_permalink"=>"sd-tst-cmpn", "created_at"=>"2015-05-05T16:39:50.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-15T16:39:50.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>21, "material_description"=>"10 tons of dog food", "material_permalink"=>nil, "notes"=>"This appointment is a generated seed test", "permalink"=>"sd-tst-cmpn-21", "updated_at"=>"2015-05-05T16:39:50.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"acceptance test company - 0.5050358155276626", "company_permalink"=>"ccptnc-tst-cmpn-0-dot-5050358155276626", "created_at"=>"2015-05-11T23:39:32.000Z", "deleted_at"=>nil, "expected_at"=>nil, "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>22, "material_description"=>"desc - 0.5050358155276626", "material_permalink"=>nil, "notes"=>"notes - 0.5050358155276626", "permalink"=>"ccptnc-tst-cmpn-0-dot-5050358155276626-22", "updated_at"=>"2015-05-11T23:39:32.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"acceptance test company - 0.19102934724651277", "company_permalink"=>"ccptnc-tst-cmpn-0-dot-19102934724651277", "created_at"=>"2015-05-11T23:39:38.000Z", "deleted_at"=>nil, "expected_at"=>nil, "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>23, "material_description"=>"desc - 0.19102934724651277", "material_permalink"=>nil, "notes"=>"notes - 0.19102934724651277", "permalink"=>"ccptnc-tst-cmpn-0-dot-19102934724651277-23", "updated_at"=>"2015-05-11T23:39:38.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"acceptance test company - 0.8959882236085832", "company_permalink"=>"ccptnc-tst-cmpn-0-dot-8959882236085832", "created_at"=>"2015-05-11T23:55:37.000Z", "deleted_at"=>nil, "expected_at"=>nil, "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>24, "material_description"=>"desc - 0.8959882236085832", "material_permalink"=>nil, "notes"=>"notes - 0.8959882236085832", "permalink"=>"ccptnc-tst-cmpn-0-dot-8959882236085832-24", "updated_at"=>"2015-05-11T23:55:37.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"acceptance test company - 0.13160684518516064", "company_permalink"=>"ccptnc-tst-cmpn-0-dot-13160684518516064", "created_at"=>"2015-05-11T23:59:15.000Z", "deleted_at"=>nil, "expected_at"=>nil, "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>25, "material_description"=>"desc - 0.13160684518516064", "material_permalink"=>nil, "notes"=>"notes - 0.13160684518516064", "permalink"=>"ccptnc-tst-cmpn-0-dot-13160684518516064-25", "updated_at"=>"2015-05-11T23:59:15.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"acceptance test company - 0.17359342076815665", "company_permalink"=>"ccptnc-tst-cmpn-0-dot-17359342076815665", "created_at"=>"2015-05-11T23:59:33.000Z", "deleted_at"=>nil, "expected_at"=>nil, "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>26, "material_description"=>"desc - 0.17359342076815665", "material_permalink"=>nil, "notes"=>"notes - 0.17359342076815665", "permalink"=>"ccptnc-tst-cmpn-0-dot-17359342076815665-26", "updated_at"=>"2015-05-11T23:59:33.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"acceptance test company - 0.037297548027709126", "company_permalink"=>"ccptnc-tst-cmpn-0-dot-037297548027709126", "created_at"=>"2015-05-12T00:01:05.000Z", "deleted_at"=>nil, "expected_at"=>nil, "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>27, "material_description"=>"desc - 0.037297548027709126", "material_permalink"=>nil, "notes"=>"notes - 0.037297548027709126", "permalink"=>"ccptnc-tst-cmpn-0-dot-037297548027709126-27", "updated_at"=>"2015-05-12T00:01:05.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"acceptance test company - 0.6388453256804496", "company_permalink"=>"ccptnc-tst-cmpn-0-dot-6388453256804496", "created_at"=>"2015-05-12T00:01:38.000Z", "deleted_at"=>nil, "expected_at"=>nil, "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>28, "material_description"=>"desc - 0.6388453256804496", "material_permalink"=>nil, "notes"=>"notes - 0.6388453256804496", "permalink"=>"ccptnc-tst-cmpn-0-dot-6388453256804496-28", "updated_at"=>"2015-05-12T00:01:38.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"acceptance test company - 0.6584464092738926", "company_permalink"=>"ccptnc-tst-cmpn-0-dot-6584464092738926", "created_at"=>"2015-05-12T00:03:15.000Z", "deleted_at"=>nil, "expected_at"=>nil, "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>29, "material_description"=>"desc - 0.6584464092738926", "material_permalink"=>nil, "notes"=>"notes - 0.6584464092738926", "permalink"=>"ccptnc-tst-cmpn-0-dot-6584464092738926-29", "updated_at"=>"2015-05-12T00:03:15.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"acceptance test company - 0.23592650517821312", "company_permalink"=>"ccptnc-tst-cmpn-0-dot-23592650517821312", "created_at"=>"2015-05-12T00:04:04.000Z", "deleted_at"=>nil, "expected_at"=>nil, "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>30, "material_description"=>"desc - 0.23592650517821312", "material_permalink"=>nil, "notes"=>"notes - 0.23592650517821312", "permalink"=>"ccptnc-tst-cmpn-0-dot-23592650517821312-30", "updated_at"=>"2015-05-12T00:04:04.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"acceptance test company - 0.2776762777939439", "company_permalink"=>"ccptnc-tst-cmpn-0-dot-2776762777939439", "created_at"=>"2015-05-12T00:04:24.000Z", "deleted_at"=>nil, "expected_at"=>nil, "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>31, "material_description"=>"desc - 0.2776762777939439", "material_permalink"=>nil, "notes"=>"notes - 0.2776762777939439", "permalink"=>"ccptnc-tst-cmpn-0-dot-2776762777939439-31", "updated_at"=>"2015-05-12T00:04:24.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"acceptance test company - 0.6029050094075501", "company_permalink"=>"ccptnc-tst-cmpn-0-dot-6029050094075501", "created_at"=>"2015-05-12T00:05:39.000Z", "deleted_at"=>nil, "expected_at"=>nil, "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>32, "material_description"=>"desc - 0.6029050094075501", "material_permalink"=>nil, "notes"=>"notes - 0.6029050094075501", "permalink"=>"ccptnc-tst-cmpn-0-dot-6029050094075501-32", "updated_at"=>"2015-05-12T00:05:39.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"acceptance test company - 0.955781617667526", "company_permalink"=>"ccptnc-tst-cmpn-0-dot-955781617667526", "created_at"=>"2015-05-12T00:06:06.000Z", "deleted_at"=>nil, "expected_at"=>nil, "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>33, "material_description"=>"desc - 0.955781617667526", "material_permalink"=>nil, "notes"=>"notes - 0.955781617667526", "permalink"=>"ccptnc-tst-cmpn-0-dot-955781617667526-33", "updated_at"=>"2015-05-12T00:06:06.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"acceptance test company - 0.05177554814144969", "company_permalink"=>"ccptnc-tst-cmpn-0-dot-05177554814144969", "created_at"=>"2015-05-12T00:06:23.000Z", "deleted_at"=>nil, "expected_at"=>nil, "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>34, "material_description"=>"desc - 0.05177554814144969", "material_permalink"=>nil, "notes"=>"notes - 0.05177554814144969", "permalink"=>"ccptnc-tst-cmpn-0-dot-05177554814144969-34", "updated_at"=>"2015-05-12T00:06:23.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"acceptance test company - 0.89226471981965", "company_permalink"=>"ccptnc-tst-cmpn-0-dot-89226471981965", "created_at"=>"2015-05-12T00:08:35.000Z", "deleted_at"=>nil, "expected_at"=>nil, "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>35, "material_description"=>"desc - 0.89226471981965", "material_permalink"=>nil, "notes"=>"notes - 0.89226471981965", "permalink"=>"ccptnc-tst-cmpn-0-dot-89226471981965-35", "updated_at"=>"2015-05-12T00:08:35.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"acceptance test company - 0.9087939395103604", "company_permalink"=>"ccptnc-tst-cmpn-0-dot-9087939395103604", "created_at"=>"2015-05-12T00:09:02.000Z", "deleted_at"=>nil, "expected_at"=>nil, "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>36, "material_description"=>"desc - 0.9087939395103604", "material_permalink"=>nil, "notes"=>"notes - 0.9087939395103604", "permalink"=>"ccptnc-tst-cmpn-0-dot-9087939395103604-36", "updated_at"=>"2015-05-12T00:09:02.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"acceptance test company - 0.44421104877255857", "company_permalink"=>"ccptnc-tst-cmpn-0-dot-44421104877255857", "created_at"=>"2015-05-12T00:10:18.000Z", "deleted_at"=>nil, "expected_at"=>nil, "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>37, "material_description"=>"desc - 0.44421104877255857", "material_permalink"=>nil, "notes"=>"notes - 0.44421104877255857", "permalink"=>"ccptnc-tst-cmpn-0-dot-44421104877255857-37", "updated_at"=>"2015-05-12T00:10:18.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"acceptance test company - 0.8879029680974782", "company_permalink"=>"ccptnc-tst-cmpn-0-dot-8879029680974782", "created_at"=>"2015-05-12T00:26:04.000Z", "deleted_at"=>nil, "expected_at"=>nil, "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>38, "material_description"=>"desc - 0.8879029680974782", "material_permalink"=>nil, "notes"=>"notes - 0.8879029680974782", "permalink"=>"ccptnc-tst-cmpn-0-dot-8879029680974782-38", "updated_at"=>"2015-05-12T00:26:04.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"acceptance test company - 0.3319739936850965", "company_permalink"=>"ccptnc-tst-cmpn-0-dot-3319739936850965", "created_at"=>"2015-05-12T00:26:37.000Z", "deleted_at"=>nil, "expected_at"=>nil, "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>39, "material_description"=>"desc - 0.3319739936850965", "material_permalink"=>nil, "notes"=>"notes - 0.3319739936850965", "permalink"=>"ccptnc-tst-cmpn-0-dot-3319739936850965-39", "updated_at"=>"2015-05-12T00:26:37.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"acceptance test company - 0.9578592397738248", "company_permalink"=>"ccptnc-tst-cmpn-0-dot-9578592397738248", "created_at"=>"2015-05-12T00:26:49.000Z", "deleted_at"=>nil, "expected_at"=>nil, "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>40, "material_description"=>"desc - 0.9578592397738248", "material_permalink"=>nil, "notes"=>"notes - 0.9578592397738248", "permalink"=>"ccptnc-tst-cmpn-0-dot-9578592397738248-40", "updated_at"=>"2015-05-12T00:26:49.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"acceptance test company - 0.2595629913266748", "company_permalink"=>"ccptnc-tst-cmpn-0-dot-2595629913266748", "created_at"=>"2015-05-12T00:45:00.000Z", "deleted_at"=>nil, "expected_at"=>nil, "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>41, "material_description"=>"desc - 0.2595629913266748", "material_permalink"=>nil, "notes"=>"notes - 0.2595629913266748", "permalink"=>"ccptnc-tst-cmpn-0-dot-2595629913266748-41", "updated_at"=>"2015-05-12T00:45:00.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"acceptance test company - 0.10039171832613647", "company_permalink"=>"ccptnc-tst-cmpn-0-dot-10039171832613647", "created_at"=>"2015-05-12T00:45:36.000Z", "deleted_at"=>nil, "expected_at"=>nil, "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>42, "material_description"=>"desc - 0.10039171832613647", "material_permalink"=>nil, "notes"=>"notes - 0.10039171832613647", "permalink"=>"ccptnc-tst-cmpn-0-dot-10039171832613647-42", "updated_at"=>"2015-05-12T00:45:36.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"acceptance test company - 0.4156556618399918", "company_permalink"=>"ccptnc-tst-cmpn-0-dot-4156556618399918", "created_at"=>"2015-05-12T00:51:19.000Z", "deleted_at"=>nil, "expected_at"=>nil, "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>43, "material_description"=>"desc - 0.4156556618399918", "material_permalink"=>nil, "notes"=>"notes - 0.4156556618399918", "permalink"=>"ccptnc-tst-cmpn-0-dot-4156556618399918-43", "updated_at"=>"2015-05-12T00:51:19.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"acceptance test company - 0.5499056947883219", "company_permalink"=>"ccptnc-tst-cmpn-0-dot-5499056947883219", "created_at"=>"2015-05-12T00:52:01.000Z", "deleted_at"=>nil, "expected_at"=>nil, "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>44, "material_description"=>"desc - 0.5499056947883219", "material_permalink"=>nil, "notes"=>"notes - 0.5499056947883219", "permalink"=>"ccptnc-tst-cmpn-0-dot-5499056947883219-44", "updated_at"=>"2015-05-12T00:52:01.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"acceptance test company - 0.733474446926266", "company_permalink"=>"ccptnc-tst-cmpn-0-dot-733474446926266", "created_at"=>"2015-05-12T00:53:03.000Z", "deleted_at"=>nil, "expected_at"=>nil, "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>45, "material_description"=>"desc - 0.733474446926266", "material_permalink"=>nil, "notes"=>"notes - 0.733474446926266", "permalink"=>"ccptnc-tst-cmpn-0-dot-733474446926266-45", "updated_at"=>"2015-05-12T00:53:03.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"acceptance test company - 0.8260497956071049", "company_permalink"=>"ccptnc-tst-cmpn-0-dot-8260497956071049", "created_at"=>"2015-05-12T00:54:03.000Z", "deleted_at"=>nil, "expected_at"=>nil, "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>46, "material_description"=>"desc - 0.8260497956071049", "material_permalink"=>nil, "notes"=>"notes - 0.8260497956071049", "permalink"=>"ccptnc-tst-cmpn-0-dot-8260497956071049-46", "updated_at"=>"2015-05-12T00:54:03.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"fasdfasdf", "company_permalink"=>"fsdfsdf", "created_at"=>"2015-05-12T01:26:54.000Z", "deleted_at"=>nil, "expected_at"=>nil, "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>47, "material_description"=>"asdf", "material_permalink"=>nil, "notes"=>"fasdf", "permalink"=>"fsdfsdf-47", "updated_at"=>"2015-05-12T01:26:54.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"acceptance test company - 0.07849788246676326", "company_permalink"=>"ccptnc-tst-cmpn-0-dot-07849788246676326", "created_at"=>"2015-05-12T05:33:14.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-12T05:33:14.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>48, "material_description"=>"desc - 0.07849788246676326", "material_permalink"=>nil, "notes"=>"notes - 0.07849788246676326", "permalink"=>"ccptnc-tst-cmpn-0-dot-07849788246676326-48", "updated_at"=>"2015-05-12T05:33:14.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"96neko co", "company_permalink"=>"96nk-c", "created_at"=>"2015-05-12T17:58:57.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-12T17:58:37.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>49, "material_description"=>"shitty songs", "material_permalink"=>nil, "notes"=>"nothing", "permalink"=>"96nk-c-49", "updated_at"=>"2015-05-12T17:58:57.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"acceptance test company - 0.19745038403198123", "company_permalink"=>"ccptnc-tst-cmpn-0-dot-19745038403198123", "created_at"=>"2015-05-12T18:21:59.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-12T18:21:59.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>50, "material_description"=>"desc - 0.19745038403198123", "material_permalink"=>nil, "notes"=>"notes - 0.19745038403198123", "permalink"=>"ccptnc-tst-cmpn-0-dot-19745038403198123-50", "updated_at"=>"2015-05-12T18:21:59.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"acceptance test company - 0.999901233939454", "company_permalink"=>"ccptnc-tst-cmpn-0-dot-999901233939454", "created_at"=>"2015-05-12T18:22:02.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-12T18:22:02.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>51, "material_description"=>"desc - 0.999901233939454", "material_permalink"=>nil, "notes"=>"notes - 0.999901233939454", "permalink"=>"ccptnc-tst-cmpn-0-dot-999901233939454-51", "updated_at"=>"2015-05-12T18:22:02.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"acceptance test company - 0.02620158763602376", "company_permalink"=>"ccptnc-tst-cmpn-0-dot-02620158763602376", "created_at"=>"2015-05-12T18:23:55.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-12T18:23:55.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>52, "material_description"=>"desc - 0.02620158763602376", "material_permalink"=>nil, "notes"=>"notes - 0.02620158763602376", "permalink"=>"ccptnc-tst-cmpn-0-dot-02620158763602376-52", "updated_at"=>"2015-05-12T18:23:55.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"acceptance test company - 0.06719660898670554", "company_permalink"=>"ccptnc-tst-cmpn-0-dot-06719660898670554", "created_at"=>"2015-05-12T18:24:30.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-12T18:24:29.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>53, "material_description"=>"desc - 0.06719660898670554", "material_permalink"=>nil, "notes"=>"notes - 0.06719660898670554", "permalink"=>"ccptnc-tst-cmpn-0-dot-06719660898670554-53", "updated_at"=>"2015-05-12T18:24:30.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"acceptance test company - 0.17714275140315294", "company_permalink"=>"ccptnc-tst-cmpn-0-dot-17714275140315294", "created_at"=>"2015-05-12T18:24:37.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-12T18:24:37.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>54, "material_description"=>"desc - 0.17714275140315294", "material_permalink"=>nil, "notes"=>"notes - 0.17714275140315294", "permalink"=>"ccptnc-tst-cmpn-0-dot-17714275140315294-54", "updated_at"=>"2015-05-12T18:24:37.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"acceptance test company - 0.721194134792313", "company_permalink"=>"ccptnc-tst-cmpn-0-dot-721194134792313", "created_at"=>"2015-05-12T18:25:20.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-12T18:25:20.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>55, "material_description"=>"desc - 0.721194134792313", "material_permalink"=>nil, "notes"=>"notes - 0.721194134792313", "permalink"=>"ccptnc-tst-cmpn-0-dot-721194134792313-55", "updated_at"=>"2015-05-12T18:25:20.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"acceptance test company - 0.14609267935156822", "company_permalink"=>"ccptnc-tst-cmpn-0-dot-14609267935156822", "created_at"=>"2015-05-12T18:58:21.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-12T18:58:21.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>56, "material_description"=>"desc - 0.14609267935156822", "material_permalink"=>nil, "notes"=>"notes - 0.14609267935156822", "permalink"=>"ccptnc-tst-cmpn-0-dot-14609267935156822-56", "updated_at"=>"2015-05-12T18:58:21.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"acceptance test company - 0.5753446456510574", "company_permalink"=>"ccptnc-tst-cmpn-0-dot-5753446456510574", "created_at"=>"2015-05-12T18:58:46.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-12T18:58:46.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>57, "material_description"=>"desc - 0.5753446456510574", "material_permalink"=>nil, "notes"=>"notes - 0.5753446456510574", "permalink"=>"ccptnc-tst-cmpn-0-dot-5753446456510574-57", "updated_at"=>"2015-05-12T18:58:46.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"acceptance test company - 509", "company_permalink"=>"ccptnc-tst-cmpn-509", "created_at"=>"2015-05-12T19:00:07.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-12T19:00:06.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>58, "material_description"=>"desc - 509", "material_permalink"=>nil, "notes"=>"notes - 509", "permalink"=>"ccptnc-tst-cmpn-509-58", "updated_at"=>"2015-05-12T19:00:07.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"acceptance test company - 56611", "company_permalink"=>"ccptnc-tst-cmpn-56611", "created_at"=>"2015-05-12T19:02:33.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-12T19:02:33.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>59, "material_description"=>"desc - 56611", "material_permalink"=>nil, "notes"=>"notes - 56611", "permalink"=>"ccptnc-tst-cmpn-56611-59", "updated_at"=>"2015-05-12T19:02:33.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"acceptance test company - 44301", "company_permalink"=>"ccptnc-tst-cmpn-44301", "created_at"=>"2015-05-12T19:03:01.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-12T19:03:01.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>60, "material_description"=>"desc - 44301", "material_permalink"=>nil, "notes"=>"notes - 44301", "permalink"=>"ccptnc-tst-cmpn-44301-60", "updated_at"=>"2015-05-12T19:03:01.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"acceptance test company - 95149", "company_permalink"=>"ccptnc-tst-cmpn-95149", "created_at"=>"2015-05-12T19:27:08.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-12T19:27:08.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>61, "material_description"=>"desc - 95149", "material_permalink"=>nil, "notes"=>"notes - 95149", "permalink"=>"ccptnc-tst-cmpn-95149-61", "updated_at"=>"2015-05-12T19:27:08.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"acceptance test company - 28804", "company_permalink"=>"ccptnc-tst-cmpn-28804", "created_at"=>"2015-05-12T19:28:00.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-12T19:28:00.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>62, "material_description"=>"desc - 28804", "material_permalink"=>nil, "notes"=>"notes - 28804", "permalink"=>"ccptnc-tst-cmpn-28804-62", "updated_at"=>"2015-05-12T19:28:00.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"acceptance test company - 48877", "company_permalink"=>"ccptnc-tst-cmpn-48877", "created_at"=>"2015-05-12T19:30:14.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-12T19:30:14.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>63, "material_description"=>"desc - 48877", "material_permalink"=>nil, "notes"=>"notes - 48877", "permalink"=>"ccptnc-tst-cmpn-48877-63", "updated_at"=>"2015-05-12T19:30:14.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"acceptance test company - 22392", "company_permalink"=>"ccptnc-tst-cmpn-22392", "created_at"=>"2015-05-12T19:32:54.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-12T19:32:54.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>64, "material_description"=>"desc - 22392", "material_permalink"=>nil, "notes"=>"notes - 22392", "permalink"=>"ccptnc-tst-cmpn-22392-64", "updated_at"=>"2015-05-12T19:32:54.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"acceptance test company - 76578", "company_permalink"=>"ccptnc-tst-cmpn-76578", "created_at"=>"2015-05-12T19:39:22.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-12T19:39:22.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>65, "material_description"=>"desc - 76578", "material_permalink"=>nil, "notes"=>"notes - 76578", "permalink"=>"ccptnc-tst-cmpn-76578-65", "updated_at"=>"2015-05-12T19:39:22.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"acceptance test company - 8478", "company_permalink"=>"ccptnc-tst-cmpn-8478", "created_at"=>"2015-05-12T19:58:49.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-12T19:58:49.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>66, "material_description"=>"desc - 8478", "material_permalink"=>nil, "notes"=>"notes - 8478", "permalink"=>"ccptnc-tst-cmpn-8478-66", "updated_at"=>"2015-05-12T19:58:49.000Z"})

  Apiv1::Appointment.create({"cancelled_at"=>nil, "company"=>"acceptance test company - 33048", "company_permalink"=>"ccptnc-tst-cmpn-33048", "created_at"=>"2015-05-12T19:58:52.000Z", "deleted_at"=>nil, "expected_at"=>"2015-05-12T19:58:52.000Z", "exploded_at"=>nil, "fire_id"=>nil, "fulfilled_at"=>nil, "id"=>67, "material_description"=>"desc - 33048", "material_permalink"=>nil, "notes"=>"notes - 33048", "permalink"=>"ccptnc-tst-cmpn-33048-67", "updated_at"=>"2015-05-12T19:58:52.000Z"})
  ActiveRecord::Base.connection.reset_pk_sequence!('apiv1_appointments')
end

SeedMigration::Migrator.bootstrap(20150330222204)
