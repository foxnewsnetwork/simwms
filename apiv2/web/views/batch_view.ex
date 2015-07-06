defmodule Apiv2.BatchView do
  use Apiv2.Web, :view

  def render("index.json", %{batches: batches}) do
    %{
      batches: render_many(batches, "batch.json"),
      trucks: render_trucks(batches),
      appointments: render_appointments(batches)
    }
  end

  def render("show.json", %{batch: batch}) do
    %{
      batch: render_one(batch, "batch.json"),
      trucks: render_trucks([batch]),
      appointments: render_appointments([batch])
    }
  end

  def render("batch.json", %{batch: batch}) do
    batch |> ember_attributes |> Apiv2.DictExt.reject_blank_keys
  end

  def render_trucks(batches) do
    batches
    |> Enum.map(fn batch -> batch.truck end)
    |> render_many("truck.json")
  end
  
  def render_appointments(batches) do
    batches
    |> Enum.map(fn batch -> batch.appointment end)
    |> render_many("appointment.json")
  end

  defp ember_attributes(batch) do
    %{id: batch.id,
      permalink: batch.permalink,
      description: batch.description,
      quantity: batch.quantity,
      deleted_at: batch.deleted_at,
      dock_id: batch.dock_id,
      truck_id: batch.truck_id,
      batch_id: batch.batch_id,
      appointment_id: batch.appointment_id,
      warehouse_id: batch.warehouse_id,
      created_at: batch.inserted_at,
      updated_at: batch.updated_at}
  end
end
