# == Schema Information
#
# Table name: apiv1_batches
#
#  id             :integer          not null, primary key
#  appointment_id :integer
#  warehouse_id   :integer
#  weighticket_id :integer
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

  private
  def _create_permalink
    self.permalink ||= description.to_s.to_url.slice(0, 15) + "-#{id}"
    self.save
  end
end
