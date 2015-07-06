defmodule Apiv2.TileQuery do
  import Ecto.Query
  import Ecto.Model
  alias Apiv2.Tile

  @default_scope from t in Tile,
    select: t
  def index(params) do
    @default_scope
    |> consider_tile_types(params)
  end

  def consider_tile_types(query, %{"type" => type}) do
    query
    |> where([t], t.tile_type == ^type)
  end
  def consider_tile_types(query, _), do: query
end