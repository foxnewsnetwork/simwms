# == Schema Information
#
# Table name: apiv1_tiles
#
#  id         :integer          not null, primary key
#  tile_type  :string(255)
#  tile_name  :string(255)
#  status     :string(255)
#  x          :integer
#  y          :integer
#  z          :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  deleted_at :datetime
#  fire_id    :string(255)
#  width      :decimal(10, 6)
#  height     :decimal(10, 6)
#

class Apiv1::Dock < Apiv1::Tile
  Statuses = [:okay, :waiting, :in_use, :problem]
  self.table_name = 'apiv1_tiles'

  default_scope { where tile_type: :barn }

  scope :free_docks,
    -> { order(updated_at: :desc).where status: "okay" }

end
