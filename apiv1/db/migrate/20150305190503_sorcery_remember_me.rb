class SorceryRememberMe < ActiveRecord::Migration
  def change
    add_column :apiv1_users, :remember_me_token, :string, :default => nil
    add_column :apiv1_users, :remember_me_token_expires_at, :datetime, :default => nil

    add_index :apiv1_users, :remember_me_token
  end
end