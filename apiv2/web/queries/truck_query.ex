defmodule Apiv2.TruckQuery do
  import Ecto.Query
  alias Apiv2.Truck

  @default_scope from t in Truck,
    select: t,
    where: is_nil(t.departed_at)
  def index(_params) do
    @default_scope
  end
end