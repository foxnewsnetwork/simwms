defmodule Apiv2.AppointmentTest do
  use Apiv2.ModelCase

  alias Apiv2.Appointment

  @valid_attrs %{cancelled_at: %{day: 17, hour: 14, min: 0, month: 4, year: 2010}, company: "some content", company_permalink: "some content", deleted_at: %{day: 17, hour: 14, min: 0, month: 4, year: 2010}, expected_at: %{day: 17, hour: 14, min: 0, month: 4, year: 2010}, exploded_at: %{day: 17, hour: 14, min: 0, month: 4, year: 2010}, fire_id: "some content", fulfilled_at: %{day: 17, hour: 14, min: 0, month: 4, year: 2010}, material_description: "some content", material_permalink: "some content", notes: "some content", permalink: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Appointment.changeset(%Appointment{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Appointment.changeset(%Appointment{}, @invalid_attrs)
    refute changeset.valid?
  end
end
