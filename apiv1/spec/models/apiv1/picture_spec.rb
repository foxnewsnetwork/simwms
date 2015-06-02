# == Schema Information
#
# Table name: apiv1_pictures
#
#  id               :integer          not null, primary key
#  imageable_id     :integer
#  imageable_type   :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  pic_file_name    :string(255)
#  pic_content_type :string(255)
#  pic_file_size    :integer
#  pic_updated_at   :datetime
#

require 'rails_helper'

RSpec.describe Apiv1::Picture, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
