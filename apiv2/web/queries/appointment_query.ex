defmodule Apiv2.AppointmentQuery do
  import Ecto.Query
  alias Apiv2.Appointment
  def build_pagination_query(query, params) do
    page = String.to_integer(params["page"] || "1")
    per_page = String.to_integer(params["per_page"] || "10")
    query 
    |> limit([a], ^per_page)
    |> offset([a], ^((page - 1) * per_page))
  end

  def build_macro_query(query, params) do
    query
    |> expected_at_start(params["expected_at_start"])
    |> expected_at_finish(params["expected_at_finish"])
  end

  def expected_at_start(query, nil), do: query
  def expected_at_start(query, datetime) do
    query 
    |> where([a], a.expected_at > ^(Apiv2.TiExt.parse datetime))
  end
  def expected_at_finish(query, nil), do: query
  def expected_at_finish(query, datetime) do
    query 
    |> where([a], a.expected_at < ^(Apiv2.TiExt.parse datetime))
  end

  
  @default_index_query from a in Appointment,
    where: is_nil(a.fulfilled_at) and
           is_nil(a.deleted_at) and
           is_nil(a.cancelled_at),
    order_by: [desc: a.expected_at]
  def index(params) do
    @default_index_query
    |> build_macro_query(params)
    |> build_pagination_query(params)
    |> select([a], a)
  end

  def pagination(params) do
    @default_index_query
    |> build_macro_query(params)
    |> select([a], count(a.id))
  end

  def show(%{"id" => id}) do
    query = from a in Appointment,
      select: a
    try do
      _ = String.to_integer(id)
      query |> where([a], a.id == ^id)
    rescue
      _ in ArgumentError ->
        query |> where([a], a.permalink == ^id)
    end
  end
end