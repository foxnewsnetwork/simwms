# == Schema Information
#
# Table name: apiv1_weightickets
#
#  id                 :integer          not null, primary key
#  appointment_number :string(255)
#  license_plate      :string(255)
#  target_dock        :string(255)
#  pounds             :decimal(15, 2)
#  issuer_id          :string(255)
#  notes              :text(65535)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  finisher_id        :string(255)
#  finish_pounds      :decimal(15, 2)
#

class Apiv1::Weighticket < ActiveRecord::Base
  belongs_to :appointment,
    foreign_key: :appointment_number,
    class_name: "Apiv1::Appointment",
    primary_key: :permalink

  has_many :batches,
    class_name: 'Apiv1::Batch'

  def bale_count
    batches.count.to_i
  end

  def complete?
    pounds.present? && 
    finish_pounds.present? &&
    bale_count > 0
  end
end
