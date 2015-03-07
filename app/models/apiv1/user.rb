# == Schema Information
#
# Table name: apiv1_users
#
#  id                              :integer          not null, primary key
#  email                           :string(255)      not null
#  crypted_password                :string(255)
#  salt                            :string(255)
#  role                            :string(255)
#  username                        :string(255)
#  permalink                       :string(255)
#  created_at                      :datetime
#  updated_at                      :datetime
#  deleted_at                      :datetime
#  remember_me_token               :string(255)
#  remember_me_token_expires_at    :datetime
#  reset_password_token            :string(255)
#  reset_password_token_expires_at :datetime
#  reset_password_email_sent_at    :datetime
#

class Apiv1::User < ActiveRecord::Base
  authenticates_with_sorcery!

  def public_attributes
    {
      id: id,
      email: email,
      role: role
    }
  end
end
