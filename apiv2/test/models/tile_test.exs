defmodule Apiv2.TileTest do
  use Apiv2.ModelCase

  alias Apiv2.Tile

  @valid_attrs %{deleted_at: %{day: 17, hour: 14, min: 0, month: 4, year: 2010}, fire_id: "some content", status: "some content", tile_name: "some content", tile_type: "some content", x: 42, y: 42, z: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Tile.changeset(%Tile{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Tile.changeset(%Tile{}, @invalid_attrs)
    refute changeset.valid?
  end
end
