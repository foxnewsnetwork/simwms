class CreateApiv1Appointments < ActiveRecord::Migration
  def change
    create_table :apiv1_appointments do |t|
      t.string :permalink

      t.timestamps null: false
      t.datetime :deleted_at
    end
  end
end
