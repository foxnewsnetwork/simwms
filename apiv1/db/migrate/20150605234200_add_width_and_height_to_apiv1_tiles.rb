class AddWidthAndHeightToApiv1Tiles < ActiveRecord::Migration
  def change
    add_column :apiv1_tiles, :width, :decimal, precision: 10, scale: 6
    add_column :apiv1_tiles, :height, :decimal, precision: 10, scale: 6
  end
end
