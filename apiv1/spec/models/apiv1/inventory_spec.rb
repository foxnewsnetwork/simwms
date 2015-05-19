# == Schema Information
#
# Table name: apiv1_inventories
#
#  id          :integer          not null, primary key
#  material    :string(255)
#  cell_name   :string(255)      not null
#  notes       :text(65535)
#  arrived_at  :datetime
#  departed_at :datetime
#  deleted_at  :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe Apiv1::Inventory, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
