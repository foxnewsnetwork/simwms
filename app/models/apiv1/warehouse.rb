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

class Apiv1::Warehouse < Apiv1::Tile
  Statuses = [:empty, :partial, :full, :problem]
  self.table_name = 'apiv1_tiles'

  default_scope { where tile_type: :warehouse }

  has_many :batches,
    class_name: 'Apiv1::Batch'

  scope :empty_warehouse,
    -> { order(updated_at: :desc).where status: :empty }

  def ember_attributes
    attributes.merge batches: batches.map(&:id),
      status: status_with_default
  end

  def status_with_default
    return status if status.present?
    return :partial if batches.present?
    :empty
  end
end