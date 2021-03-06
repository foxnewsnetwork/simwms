defmodule Apiv2.EmployeeQuery do
  import Ecto.Query
  alias Apiv2.Employee

  @default_index_query from e in Employee,
    where: is_nil(e.fired_at),
    order_by: [desc: e.arrived_at]
  def index(_params) do
    @default_index_query
    |> select([e], e)
  end
end