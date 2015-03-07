class CreateApiv1Tiles < ActiveRecord::Migration
  def change
    create_table :apiv1_tiles do |t|
      t.string :tile_type
      t.string :tile_name
      t.string :status
      t.integer :x
      t.integer :y
      t.integer :z
      t.timestamps null: false
      t.datetime :deleted_at
    end
  end
end
