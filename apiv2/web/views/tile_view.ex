defmodule Apiv2.TileView do
  use Apiv2.Web, :view

  def render("index.json", %{tiles: tiles}) do
    tiles 
    |> Enum.map(&dictify(&1)) 
    |> (fn dicts -> %{cameras: extract_cameras(dicts), tiles: simplify(dicts)} end).()
  end

  def render("show.json", %{tile: tile}) do
    tile
    |> dictify
    |> (fn dict -> %{cameras: extract_cameras([dict]), tile: identify_camera(dict)} end).()
  end

  def extract_cameras(dicts) do
    dicts
    |> Enum.flat_map(fn %{cameras: cameras} -> cameras end)
  end

  def simplify(dicts) do
    dicts
    |> Enum.map &identify_camera(&1)
  end

  def identify_camera(dict) do
    dict
    |> Dict.update :cameras, [], &get_ids(&1)
  end

  def get_ids(cameras) do
    cameras
    |> Enum.map &get_id(&1)
  end

  def get_id(%{id: id}) do
    id
  end

  def dictify(tile) do
    %{
      id: tile.id,
      tile_type: tile.tile_type,
      tile_name: tile.tile_name,
      status: tile.status,
      x: tile.x,
      y: tile.y,
      z: tile.z,
      width: tile.width,
      height: tile.height,
      deleted_at: tile.deleted_at,
      fire_id: tile.fire_id,
      created_at: tile.created_at,
      updated_at: tile.updated_at
    }
    |> Dict.merge(Apiv2.CameraView.render("index.json", %{cameras: tile.cameras}))
    |> reject_blank_keys
  end

  def reject_blank_keys(dict) do
    bad_keys = Dict.keys(dict) |> Enum.filter(fn key -> is_nil(Dict.get dict, key) end)
    Dict.drop dict, bad_keys
  end

end
