defmodule Apiv2.Appointment do
  use Apiv2.Web, :model

  schema "apiv1_appointments" do
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
    field :fire_id, :string

    timestamps inserted_at: :created_at
  end

  @required_fields ~w(permalink deleted_at material_description material_permalink company company_permalink notes fulfilled_at cancelled_at expected_at exploded_at fire_id)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If `params` are nil, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end

  
end
