# == Schema Information
#
# Table name: apiv1_docks
#
#  id          :integer          not null, primary key
#  dock_number :string(255)
#  status      :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Apiv1::Dock < ActiveRecord::Base
  Statuses = [:free, :occupied, :problem]

  scope :free_docks,
    -> { order(updated_at: :desc).where status: :free }

end
