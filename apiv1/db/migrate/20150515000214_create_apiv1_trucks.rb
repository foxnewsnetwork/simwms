class CreateApiv1Trucks < ActiveRecord::Migration
  def change
    create_table :apiv1_trucks do |t|
      t.string :entry_scale_id
      t.string :exit_scale_id
      t.string :dock_id
      t.string :appointment_id
      t.string :weighticket_id
      t.datetime :arrived_at
      t.datetime :departed_at
      t.datetime :docked_at
      t.datetime :undocked_at

      t.timestamps null: false
    end
  end
end
