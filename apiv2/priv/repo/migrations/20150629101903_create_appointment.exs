defmodule Apiv2.Repo.Migrations.CreateAppointment do
  use Ecto.Migration

  def change do
    create table(:apiv2_appointments) do
      add :appointment_type, :string
      add :permalink, :string
      add :deleted_at, :datetime
      add :material_description, :string
      add :material_permalink, :string
      add :company, :string
      add :company_permalink, :string
      add :notes, :text
      add :fulfilled_at, :datetime
      add :cancelled_at, :datetime
      add :expected_at, :datetime
      add :exploded_at, :datetime
      add :external_reference, :string

      timestamps
    end
    create index(:apiv2_appointments, [:permalink])
  end
end
