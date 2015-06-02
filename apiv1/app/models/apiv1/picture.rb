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

class Apiv1::Picture < ActiveRecord::Base
  belongs_to :imageable, polymorphic: true
  has_attached_file :pic, 
    styles: { thumb: "100x100#" },
    default_url: "/images/:style/missing.png"
  validates_attachment :pic, 
    content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
  def ember_attributes
    {
      id: id,
      created_at: created_at,
      thumbnail: pic.url(:thumb),
      normal: pic.url
    }
  end

end
