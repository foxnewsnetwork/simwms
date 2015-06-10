# == Schema Information
#
# Table name: apiv1_camera_videoable_relationships
#
#  id             :integer          not null, primary key
#  camera_id      :integer
#  videoable_id   :integer
#  videoable_type :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'rails_helper'

RSpec.describe Apiv1::CameraVideoableRelationship, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
