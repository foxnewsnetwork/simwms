class CreateApiv1Docks < ActiveRecord::Migration
  def change
    create_table :apiv1_docks do |t|
      t.string :dock_number
      t.string :status

      t.timestamps null: false
    end
  end
end
