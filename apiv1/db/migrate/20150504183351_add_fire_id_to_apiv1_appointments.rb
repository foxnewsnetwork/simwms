class AddFireIdToApiv1Appointments < ActiveRecord::Migration
  def change
    add_column :apiv1_appointments, :fire_id, :string
  end
end
