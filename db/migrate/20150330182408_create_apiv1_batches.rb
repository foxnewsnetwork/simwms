class CreateApiv1Batches < ActiveRecord::Migration
  def change
    create_table :apiv1_batches do |t|
      t.references :warehouse, index: true
      t.references :weighticket, index: true
      t.string :appointment_id
      t.string :entry_dock_id
      t.string :exit_dock_id
      t.string :permalink
      t.string :description
      t.string :quantity
      t.timestamps null: false
      t.datetime :deleted_at
    end
    add_index :apiv1_batches, :appointment_id
  end
end