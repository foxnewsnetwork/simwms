# == Schema Information
#
# Table name: apiv1_batches
#
#  id             :integer          not null, primary key
#  appointment_id :integer
#  warehouse_id   :integer
#  permalink      :string(255)
#  description    :string(255)
#  quantity       :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  deleted_at     :datetime
#

require 'rails_helper'

RSpec.describe Apiv1::Batch, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end