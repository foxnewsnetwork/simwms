class AddFinishFieldsToApiv1Weightickets < ActiveRecord::Migration
  def change
    add_column :apiv1_weightickets, :finisher_id, :string
    add_column :apiv1_weightickets, :finish_pounds, :decimal, precision: 15, scale: 2
  end
end
