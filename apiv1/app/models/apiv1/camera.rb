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

class Apiv1::Camera < ActiveRecord::Base
  belongs_to :tile,
    class_name: "Apiv1::Tile",
    foreign_key: :tile_id

  def ember_attributes
    attributes
  end
end
