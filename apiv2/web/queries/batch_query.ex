defmodule Apiv2.BatchQuery do
  import Ecto.Query
  alias Apiv2.Batch
  
  @default_query from b in Batch,
    select: b

  def index(params) do
    @default_query
    |> consider_warehouse(params)
    |> consider_dock(params)
    |> consider_truck(params)
  end

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