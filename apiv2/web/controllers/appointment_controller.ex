defmodule Apiv2.AppointmentController do
  use Apiv2.Web, :controller

  alias Apiv2.Appointment

  plug :scrub_params, "appointment" when action in [:create, :update]
  plug :action

  def index(conn, _params) do
    appointments = Repo.all(Appointment)
    render(conn, "index.json", appointments: appointments)
  end

  def create(conn, %{"appointment" => appointment_params}) do
    changeset = Appointment.changeset(%Appointment{}, appointment_params)

    if changeset.valid? do
      appointment = Repo.insert(changeset)
      render(conn, "show.json", appointment: appointment)
    else
      conn
      |> put_status(:unprocessable_entity)
      |> render(Apiv2.ChangesetView, "error.json", changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    appointment = Repo.get(Appointment, id)
    render conn, "show.json", appointment: appointment
  end

  def update(conn, %{"id" => id, "appointment" => appointment_params}) do
    appointment = Repo.get(Appointment, id)
    changeset = Appointment.changeset(appointment, appointment_params)

    if changeset.valid? do
      appointment = Repo.update(changeset)
      render(conn, "show.json", appointment: appointment)
    else
      conn
      |> put_status(:unprocessable_entity)
      |> render(Apiv2.ChangesetView, "error.json", changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    appointment = Repo.get(Appointment, id)

    appointment = Repo.delete(appointment)
    render(conn, "show.json", appointment: appointment)
  end
end
