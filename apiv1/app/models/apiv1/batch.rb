# == Schema Information
#
# Table name: apiv1_batches
#
#  id             :integer          not null, primary key
#  warehouse_id   :integer
#  weighticket_id :integer
#  appointment_id :string(255)
#  entry_dock_id  :string(255)
#  exit_dock_id   :string(255)
#  permalink      :string(255)
#  description    :string(255)
#  quantity       :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  deleted_at     :datetime
#

class Apiv1::Batch < ActiveRecord::Base
  acts_as_paranoid
  belongs_to :weighticket,
    class_name: 'Apiv1::Weighticket'
  belongs_to :appointment,
    class_name: 'Apiv1::Appointment'
  belongs_to :warehouse,
    class_name: 'Apiv1::Warehouse'
  after_create :_create_permalink

  has_many :pictures,
    class_name: "Apiv1::Picture",
    as: :imageable

  def ember_json
    {
      batch: ember_attributes,
      pictures: pictures.map(&:ember_attributes)
    }
  end

  def ember_attributes
    attributes.merge pictures: pictures.map(&:id)
  end

  private
  def _create_permalink
    self.permalink ||= description.to_s.to_url.slice(0, 15) + "-#{id}"
    self.save
  end
end
