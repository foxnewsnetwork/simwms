# == Schema Information
#
# Table name: apiv1_appointments
#
#  id         :integer          not null, primary key
#  permalink  :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  deleted_at :datetime
#

class Apiv1::Appointment < ActiveRecord::Base
end
