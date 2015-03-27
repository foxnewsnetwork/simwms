class AddDataFieldsToApiv1Appointment < ActiveRecord::Migration
  def change
    add_column :apiv1_appointments, :material_description, :string
    add_column :apiv1_appointments, :material_permalink, :string
    add_column :apiv1_appointments, :company, :string
    add_column :apiv1_appointments, :company_permalink, :string
    add_column :apiv1_appointments, :notes, :text
    add_column :apiv1_appointments, :fulfilled_at, :datetime
    add_column :apiv1_appointments, :cancelled_at, :datetime
    add_column :apiv1_appointments, :expected_at, :datetime
    add_column :apiv1_appointments, :exploded_at, :datetime
  end
end
