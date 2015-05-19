defmodule Apiv2.AppointmentView do
  use Apiv2.Web, :view
  
  def render("index.json", %{appointments: appointments}) do
    %{appointments: render_many(appointments, "appointment.json")}
  end

  def render("show.json", %{appointment: appointment}) do
    %{appointment: render_one(appointment, "appointment.json")}
  end

  def render("appointment.json", %{appointment: appointment}) do
    ember_attributes appointment
  end

  defp ember_attributes(appointment) do
    %{
      id: appointment.permalink,
      database_id: appointment.id,
      company_permalink: appointment.company_permalink,
      created_at: appointment.created_at,
      updated_at: appointment.updated_at,
      expected_at: appointment.expected_at,
      fulfilled_at: appointment.fulfilled_at,
      cancelled_at: appointment.cancelled_at,
      exploded_at: appointment.exploded_at,
      material_description: appointment.material_description,
      company: appointment.company,
      notes: appointment.notes,
      status: calculate_status appointment
    }
  end

  defp calculate_status(appointment) do
    cond do
      appointment.fulfilled_at -> :fulfilled
      appointment.cancelled_at -> :cancelled
      is_nil(appointment.exploded_at) and is_nil(appointment.expected_at) -> :problem
      expected_within_current_work_day?(appointment) -> :expected
      expected_yesterday_or_earlier?(appointment) -> :vanished
      expected_tomorrow_or_later?(appointment) -> :planned
      true -> :unknown
    end
  end

  defp from_now(time, :hours) do
    alias Timex.Date
    Date.shift Date.now, hours: time
  end

  defp ago(time, unit) do
    from_now -time, unit
  end

  defp expected_within_current_work_day?(%{expected_at: nil}) do 
    false
  end
  defp expected_within_current_work_day?(%{expected_at: expected_at}) do
    ago(4, :hours) < expected_at and expected_at < from_now(12, :hours)
  end

  defp expected_yesterday_or_earlier?(%{expected_at: nil}) do 
    false
  end
  defp expected_yesterday_or_earlier?(%{expected_at: expected_at}) do
    ago(4, :hours) > expected_at
  end

  defp expected_tomorrow_or_later?(%{expected_at: nil}) do 
    false
  end
  defp expected_tomorrow_or_later?(%{expected_at: expected_at}) do
    from_now(12, :hours) < expected_at
  end
end

