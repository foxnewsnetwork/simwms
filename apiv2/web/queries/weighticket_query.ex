defmodule Apiv2.WeighticketQuery do
  import Ecto.Query
  alias Apiv2.Weighticket

  def show(%{"id" => id}) do
    from w in Weighticket,
      where: w.id == ^id,
      select: w
  end

end