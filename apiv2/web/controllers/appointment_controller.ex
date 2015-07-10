defmodule Apiv2.AppointmentController do
  use Apiv2.Web, :controller

  alias Apiv2.Appointment
  alias Apiv2.AppointmentMeta

  plug :scrub_params, "appointment" when action in [:create, :update]
  

  @preload_fields [:truck, :weighticket]
  def index(conn, params) do
    appointments = params 
    |> Apiv2.AppointmentQuery.index 
    |> Repo.all
    |> Repo.preload(@preload_fields)
    meta = AppointmentMeta.generate params
    render(conn, "index.json", appointments: appointments, meta: meta)
  end

  def create(conn, %{"appointment" => appointment_params}) do
    changeset = Appointment.changeset(%Appointment{}, appointment_params)

    if changeset.valid? do
      appointment = Repo.insert(changeset) |> Repo.preload(@preload_fields)
      Apiv2.Endpoint.broadcast! "appointments:adds", "new", %{appointment: appointment}
      render(conn, "show.json", appointment: appointment)
    else
      conn
      |> put_status(:unprocessable_entity)
      |> render(Apiv2.ChangesetView, "error.json", changeset: changeset)
    end
  end

  def show(conn, params) do
    appointment = params 
    |> Apiv2.AppointmentQuery.show 
    |> Repo.one!
    |> Repo.preload(@preload_fields)
    render conn, "show.json", appointment: appointment
  end

  def update(conn, %{"id" => id, "appointment" => appointment_params}) do
    appointment = Repo.get!(Appointment, id)
    changeset = Appointment.changeset(appointment, appointment_params)

    if changeset.valid? do
      appointment = Repo.update(changeset) |> Repo.preload(@preload_fields)
      Apiv2.Endpoint.broadcast! "appointments:changes", id, %{appointment: appointment}
      render(conn, "show.json", appointment: appointment)
    else
      conn
      |> put_status(:unprocessable_entity)
      |> render(Apiv2.ChangesetView, "error.json", changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    appointment = Repo.get!(Appointment, id)

    appointment = Repo.delete!(appointment)
    Apiv2.Endpoint.broadcast! "appointments:removes", id, %{appointment: appointment}
    render(conn, "show.json", appointment: appointment)
  end

end
