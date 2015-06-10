class AddTileRefToApiv1Cameras < ActiveRecord::Migration
  def change
    add_column :apiv1_cameras, :camera_style, :string
    add_reference :apiv1_cameras, :tile, index: true
    add_foreign_key :apiv1_cameras, :apiv1_tiles, column: :tile_id
  end
end
