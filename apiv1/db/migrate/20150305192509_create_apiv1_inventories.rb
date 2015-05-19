class CreateApiv1Inventories < ActiveRecord::Migration
  def change
    create_table :apiv1_inventories do |t|
      t.string :material
      t.string :cell_name, null: false
      t.text :notes
      t.datetime :arrived_at
      t.datetime :departed_at
      t.datetime :deleted_at
      t.timestamps null: false
    end

  end
end
