class CreateApiv1Pictures < ActiveRecord::Migration
  def change
    create_table :apiv1_pictures do |t|
      t.references :imageable, polymorphic: true
      t.timestamps null: false
    end
  end
end
