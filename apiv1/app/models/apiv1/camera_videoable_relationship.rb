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

class Apiv1::CameraVideoableRelationship < ActiveRecord::Base
  belongs_to :camera
  belongs_to :videoable
end
