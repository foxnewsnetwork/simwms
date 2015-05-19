class SorceryCore < ActiveRecord::Migration
  def change
    create_table :apiv1_users do |t|
      t.string :email,            :null => false
      t.string :crypted_password
      t.string :salt
      t.string :role
      t.string :username
      t.string :permalink
      t.timestamps
      t.datetime :deleted_at
    end

    add_index :apiv1_users, :email, unique: true
  end
end