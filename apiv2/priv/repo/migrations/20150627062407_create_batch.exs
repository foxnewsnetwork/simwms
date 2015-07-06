defmodule Apiv2.Repo.Migrations.CreateBatch do
  use Ecto.Migration

  def change do
    create table(:apiv2_batches) do
      add :batch_type, :string
      add :permalink, :string
      add :description, :string
      add :quantity, :string
      add :deleted_at, :datetime
      add :dock_id, :integer
      add :appointment_id, :integer
      add :warehouse_id, :integer
      add :truck_id, :integer
      add :batch_id, :integer

      timestamps
    end
    create index(:apiv2_batches, [:dock_id])
    create index(:apiv2_batches, [:appointment_id])
    create index(:apiv2_batches, [:warehouse_id])
    create index(:apiv2_batches, [:truck_id])
    create index(:apiv2_batches, [:batch_id])
  end
end
