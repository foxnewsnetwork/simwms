class CreateApiv1Cameras < ActiveRecord::Migration
  def change
    create_table :apiv1_cameras do |t|
      t.string :permalink
      t.string :camera_name
      t.string :mac_address
      t.timestamps null: false
    end
  end
end
