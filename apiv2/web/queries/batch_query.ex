defmodule Apiv2.BatchQuery do
  import Ecto.Query
  alias Apiv2.Batch
  @preload_fields [:truck, :appointment, pickup_appointments: :outgoing_batches]

  def preload_fields, do: @preload_fields
  @default_query from b in Batch,
    where: is_nil(b.deleted_at),
    select: b

  def index(params) do
    @default_query
    |> consider_warehouse(params)
    |> consider_dock(params)
    |> consider_truck(params)
    |> consider_search(params)
  end

  def is_virgin(query) do
    query
    |> where([b], b.outgoing_count < 1)
  end

  def consider_search(query, %{"search" => ""}), do: query
  def consider_search(query, %{"search" => search}) do
    import Apiv2.StrExt, only: [to_url: 1]
    query
    |> is_virgin
    |> where([b], b.outgoing_count == 0)
    |> where([b], like(b.permalink, ^("%#{to_url(search)}%")))
    |> order_by([b], [desc: b.appointment_id, desc: b.inserted_at])
  end
  def consider_search(query, _), do: query

  def created_at_start(query, nil), do: query
  def created_at_start(query, datetime) do
    query
    |> where([b], ^(Apiv2.TiExt.parse datetime) < b.inserted_at )
  end
  def created_at_finish(query, nil), do: query
  def created_at_finish(query, datetime) do
    query
    |> where([b], b.inserted_at < ^(Apiv2.TiExt.parse datetime))
  end

  def consider_truck(query, %{"truck" => ""}), do: query
  def consider_truck(query, %{"truck" => truck}) do
    query
    |> where([b], b.truck_id == ^truck)
  end
  def consider_truck(query, _), do: query

  def consider_dock(query, %{"dock" => ""}), do: query
  def consider_dock(query, %{"dock" => dock}) do
    query
    |> where([b], b.dock_id == ^dock)
  end
  def consider_dock(query, _), do: query

  def consider_warehouse(query, %{"warehouse" => ""}), do: query
  def consider_warehouse(query, %{"warehouse" => warehouse}) do
    query
    |> where([b], b.warehouse_id == ^warehouse)
  end
  def consider_warehouse(query, _), do: query
end