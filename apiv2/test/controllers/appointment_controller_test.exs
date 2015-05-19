defmodule Apiv2.AppointmentControllerTest do
  use Apiv2.ConnCase

  alias Apiv2.Appointment
  @valid_attrs %{cancelled_at: %{day: 17, hour: 14, min: 0, month: 4, year: 2010}, company: "some content", company_permalink: "some content", deleted_at: %{day: 17, hour: 14, min: 0, month: 4, year: 2010}, expected_at: %{day: 17, hour: 14, min: 0, month: 4, year: 2010}, exploded_at: %{day: 17, hour: 14, min: 0, month: 4, year: 2010}, fire_id: "some content", fulfilled_at: %{day: 17, hour: 14, min: 0, month: 4, year: 2010}, material_description: "some content", material_permalink: "some content", notes: "some content", permalink: "some content"}
  @invalid_attrs %{}

  setup do
    conn = conn() |> put_req_header("accept", "application/json")
    {:ok, conn: conn}
  end

  test "lists all entries on index", %{conn: conn} do
    conn = get conn, appointment_path(conn, :index)
    assert json_response(conn, 200)["data"] == []
  end

  test "shows chosen resource", %{conn: conn} do
    appointment = Repo.insert %Appointment{}
    conn = get conn, appointment_path(conn, :show, appointment)
    assert json_response(conn, 200)["data"] == %{
      "id" => appointment.id
    }
  end

  test "creates and renders resource when data is valid", %{conn: conn} do
    conn = post conn, appointment_path(conn, :create), appointment: @valid_attrs
    assert json_response(conn, 200)["data"]["id"]
    assert Repo.get_by(Appointment, @valid_attrs)
  end

  test "does not create resource and renders errors when data is invalid", %{conn: conn} do
    conn = post conn, appointment_path(conn, :create), appointment: @invalid_attrs
    assert json_response(conn, 422)["errors"] != %{}
  end

  test "updates and renders chosen resource when data is valid", %{conn: conn} do
    appointment = Repo.insert %Appointment{}
    conn = put conn, appointment_path(conn, :update, appointment), appointment: @valid_attrs
    assert json_response(conn, 200)["data"]["id"]
    assert Repo.get_by(Appointment, @valid_attrs)
  end

  test "does not update chosen resource and renders errors when data is invalid", %{conn: conn} do
    appointment = Repo.insert %Appointment{}
    conn = put conn, appointment_path(conn, :update, appointment), appointment: @invalid_attrs
    assert json_response(conn, 422)["errors"] != %{}
  end

  test "deletes chosen resource", %{conn: conn} do
    appointment = Repo.insert %Appointment{}
    conn = delete conn, appointment_path(conn, :delete, appointment)
    assert json_response(conn, 200)["data"]["id"]
    refute Repo.get(Appointment, appointment.id)
  end
end
