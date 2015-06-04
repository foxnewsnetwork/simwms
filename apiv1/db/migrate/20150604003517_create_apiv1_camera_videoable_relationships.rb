class CreateApiv1CameraVideoableRelationships < ActiveRecord::Migration
  def change
    create_table :apiv1_camera_videoable_relationships do |t|
      t.references :camera, index: true
      t.references :videoable, polymorphic: true

      t.timestamps null: false
    end
    add_index :apiv1_camera_videoable_relationships, [:videoable_id, :videoable_type], name: 'by_camera_videoable'
    add_foreign_key :apiv1_camera_videoable_relationships, :apiv1_cameras, column: :camera_id
  end
end
