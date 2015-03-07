class SorceryResetPassword < ActiveRecord::Migration
  def change
    add_column :apiv1_users, :reset_password_token, :string, :default => nil
    add_column :apiv1_users, :reset_password_token_expires_at, :datetime, :default => nil
    add_column :apiv1_users, :reset_password_email_sent_at, :datetime, :default => nil

    add_index :apiv1_users, :reset_password_token
  end
end