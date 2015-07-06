defmodule Apiv2.Batch do
  use Apiv2.Web, :model
  @batch_types ~w(incoming outgoing split)

  schema "apiv2_batches" do
    field :batch_type, :string
    field :permalink, :string
    field :description, :string
    field :quantity, :string
    field :deleted_at, Ecto.DateTime
    belongs_to :dock, Apiv2.Tile, foreign_key: :dock_id
    belongs_to :warehouse, Apiv2.Tile, foreign_key: :warehouse_id
    belongs_to :appointment, Apiv2.Appointment, foreign_key: :appointment_id
    belongs_to :truck, Apiv2.Truck, foreign_key: :truck_id
    belongs_to :batch, Apiv2.Batch, foreign_key: :batch_id
    timestamps 
  end

  @required_fields ~w(batch_type dock_id appointment_id warehouse_id)
  @optional_fields ~w(description permalink quantity truck_id batch_id deleted_at)

  @doc """
  Creates a changeset based on the `model` and `params`.

  If `params` are nil, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
    |> validate_inclusion(:batch_type, @batch_types)
  end

  before_insert :create_permalink
  def create_permalink(changeset) do
    batch_type = changeset |> Ecto.Changeset.get_field(:batch_type)
    appointment_id = changeset |> Ecto.Changeset.get_field(:appointment_id)
    v = :random.uniform(1000000)
    changeset
    |> Ecto.Changeset.put_change(:company_permalink, "#{batch_type}-appt-#{appointment_id}-#{v}")
  end
end
