class CreateApiv1Weightickets < ActiveRecord::Migration
  def change
    create_table :apiv1_weightickets do |t|
      t.string :appointment_number
      t.string :license_plate
      t.string :target_dock
      t.decimal :pounds, precision: 15, scale: 2
      t.string :issuer_id
      t.text :notes

      t.timestamps null: false
    end
  end
end
