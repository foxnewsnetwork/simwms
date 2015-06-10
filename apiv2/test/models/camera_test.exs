defmodule Apiv2.CameraTest do
  use Apiv2.ModelCase

  alias Apiv2.Camera

  @valid_attrs %{camera_name: "some content", mac_address: "some content", permalink: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Camera.changeset(%Camera{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Camera.changeset(%Camera{}, @invalid_attrs)
    refute changeset.valid?
  end
end
