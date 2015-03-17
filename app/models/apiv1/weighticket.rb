# == Schema Information
#
# Table name: apiv1_weightickets
#
#  id                 :integer          not null, primary key
#  appointment_number :string(255)
#  license_plate      :string(255)
#  target_dock        :string(255)
#  notes              :text(65535)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Apiv1::Weighticket < ActiveRecord::Base
end
