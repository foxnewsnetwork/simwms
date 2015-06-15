# == Schema Information
#
# Table name: apiv1_cameras
#
#  id           :integer          not null, primary key
#  permalink    :string(255)
#  camera_name  :string(255)
#  mac_address  :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  camera_style :string(255)
#  tile_id      :integer
#

require 'rails_helper'

RSpec.describe Apiv1::Camera, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
