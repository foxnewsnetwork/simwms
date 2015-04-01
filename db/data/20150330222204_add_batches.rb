class AddBatches < SeedMigration::Migration
  def up
    Apiv1::Batch.create _batches
  end

  def down
    _batches.each do |batch|
      Apiv1::Batch.where(batch).map &:destroy
    end
  end
  private
  def _batches
    _warehouses.map do |warehouse|
      {
        description: "Test batch",
        quantity: "one bale",
        warehouse: warehouse
      }
    end
  end
  def _warehouses
    Apiv1::Warehouse.limit(5)
  end
end
