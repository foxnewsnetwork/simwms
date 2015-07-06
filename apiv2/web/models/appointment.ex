defmodule Apiv2.Appointment do
  use Apiv2.Web, :model
  @appointment_types ~w(dropoff pickup both)
  schema "apiv2_appointments" do
    field :appointment_type, :string
    field :permalink, :string
    field :deleted_at, Ecto.DateTime
    field :material_description, :string
    field :material_permalink, :string
    field :company, :string
    field :company_permalink, :string
    field :notes, :string
    field :fulfilled_at, Ecto.DateTime
    field :cancelled_at, Ecto.DateTime
    field :expected_at, Ecto.DateTime
    field :exploded_at, Ecto.DateTime
    field :external_reference, :string

    has_one :weighticket, Apiv2.Weighticket
    has_one :truck, Apiv2.Truck
    timestamps 
  end

  @required_fields ~w(appointment_type
    material_description 
    company 
    expected_at)
  @optional_fields ~w(company_permalink 
    permalink 
    deleted_at
    notes
    material_permalink
    fulfilled_at
    cancelled_at
    exploded_at
    external_reference)

  @doc """
  Creates a changeset based on the `model` and `params`.

  If `params` are nil, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
    |> validate_inclusion(:appointment_type, @appointment_types)
  end

  before_insert :create_permalink
  def create_permalink(changeset) do
    changeset
    |> create_company_permalink
    |> create_regular_permalink
  end

  def create_regular_permalink(changeset) do
    company_permalink = Ecto.Changeset.get_field(changeset, :company_permalink)
    v = :random.uniform(1000000)
    changeset
    |> Ecto.Changeset.put_change(:permalink, "#{company_permalink}-#{v}")
  end

  def create_company_permalink(changeset) do
    company_permalink = changeset |> Ecto.Changeset.get_field(:company) |> Apiv2.StrExt.to_url
    changeset
    |> Ecto.Changeset.put_change(:company_permalink, company_permalink)
  end
end
