# == Schema Information
#
# Table name: apiv1_trucks
#
#  id             :integer          not null, primary key
#  entry_scale_id :string(255)
#  exit_scale_id  :string(255)
#  dock_id        :string(255)
#  appointment_id :string(255)
#  weighticket_id :string(255)
#  arrived_at     :datetime
#  departed_at    :datetime
#  docked_at      :datetime
#  undocked_at    :datetime
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Apiv1::Truck < ActiveRecord::Base
end
