defmodule Apiv2.AppointmentView do
  use Apiv2.Web, :view
  def render("index.json", %{appointments: appointments, meta: meta}) do
    %{
      appointments: render_many(appointments, "appointment.json"),
      trucks: render_trucks(appointments),
      weightickets: render_weightickets(appointments),
      meta: meta
    }
  end

  def render("show.json", %{appointment: appointment}) do
    %{
      appointment: render_one(appointment, "appointment.json"),
      trucks: render_trucks([appointment]),
      weightickets: render_weightickets([appointment])
    }
  end

  def render("appointment.json", %{appointment: appointment}) do
    appointment |> ember_attributes |> Apiv2.DictExt.reject_blank_keys
  end

  def render_trucks(appointments) do 
    appointments
    |> Enum.map(fn appointment -> appointment.truck end)
    |> Enum.reject(&is_nil/1)
    |> render_many("truck.json")
  end

  def render_weightickets(appointments) do
    appointments
    |> Enum.map(fn appointment -> appointment.weighticket end) 
    |> Enum.reject(&is_nil/1)
    |> render_many("weighticket.json")
  end

  defp ember_attributes(appointment) do
    %{
      id: appointment.id,
      permalink: appointment.permalink,
      company_permalink: appointment.company_permalink,
      created_at: appointment.inserted_at,
      updated_at: appointment.updated_at,
      expected_at: appointment.expected_at,
      fulfilled_at: appointment.fulfilled_at,
      cancelled_at: appointment.cancelled_at,
      exploded_at: appointment.exploded_at,
      material_description: appointment.material_description,
      company: appointment.company,
      notes: appointment.notes,
      external_reference: appointment.external_reference
    }
  end

end