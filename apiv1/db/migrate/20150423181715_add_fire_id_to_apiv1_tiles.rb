class AddFireIdToApiv1Tiles < ActiveRecord::Migration
  def change
    add_column :apiv1_tiles, :fire_id, :string
  end
end
