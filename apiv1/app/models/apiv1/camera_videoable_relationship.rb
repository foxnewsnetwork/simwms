class Apiv1::CameraVideoableRelationship < ActiveRecord::Base
  belongs_to :camera
  belongs_to :videoable
end
