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
#

class Apiv1::Tile < ActiveRecord::Base
  KnownTypes = [:barn, :scale, :warehouse, :road, :station]
  acts_as_paranoid
  validates :tile_type,
    presence: true,
    inclusion: { in: KnownTypes.map(&:to_s) }

  scope :living_barns,
    -> { where tile_type: :barn }
  scope :living_scales,
    -> { where tile_type: :scale }
  scope :living_warehouses,
    -> { where tile_type: :warehouse }
  scope :living_roads,
    -> { where tile_type: :road }
  scope :living_stations,
    -> { where tile_type: :station }
end
