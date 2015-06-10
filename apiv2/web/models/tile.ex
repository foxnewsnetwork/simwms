defmodule Apiv2.Tile do
  use Apiv2.Web, :model

  schema "apiv1_tiles" do
    field :tile_type, :string
    field :tile_name, :string
    field :status, :string
    field :x, :integer
    field :y, :integer
    field :z, :integer
    field :width, :decimal
    field :height, :decimal
    field :deleted_at, Ecto.DateTime
    field :fire_id, :string

    has_many :cameras, Apiv2.Camera, foreign_key: :tile_id
    timestamps inserted_at: :created_at
  end

  @required_fields ~w(tile_type x y)
  @optional_fields ~w(deleted_at tile_name fire_id status z width height)

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
