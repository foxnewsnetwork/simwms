defmodule Apiv2.BatchController do
  use Apiv2.Web, :controller

  alias Apiv2.Batch

  plug :scrub_params, "batch" when action in [:create, :update]
  
  def index(conn, params) do
    batches = params |> Apiv2.BatchQuery.index |> Repo.all |> Repo.preload(Apiv2.BatchQuery.preload_fields)
    render(conn, "index.json", batches: batches)
  end

  def show(conn, %{"id" => id}) do
    batch = Repo.get!(Batch, id) |> Repo.preload(Apiv2.BatchQuery.preload_fields)
    render conn, "show.json", batch: batch
  end
  
  def create(conn, %{"batch" => batch_params}) do
    changeset = Batch.changeset(%Batch{}, batch_params)

    if changeset.valid? do
      batch = Repo.insert!(changeset) |> Repo.preload(Apiv2.BatchQuery.preload_fields)
      render(conn, "show.json", batch: batch)
    else
      conn
      |> put_status(:unprocessable_entity)
      |> render(Apiv2.ChangesetView, "error.json", changeset: changeset)
    end
  end


  def update(conn, %{"id" => id, "batch" => batch_params}) do
    batch = Repo.get!(Batch, id)
    changeset = Batch.changeset(batch, batch_params)

    if changeset.valid? do
      batch = Repo.update!(changeset) |> Repo.preload(Apiv2.BatchQuery.preload_fields)
      render(conn, "show.json", batch: batch)
    else
      conn
      |> put_status(:unprocessable_entity)
      |> render(Apiv2.ChangesetView, "error.json", changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    batch = Repo.get(Batch, id)

    batch = Repo.delete(batch)
    render(conn, "show.json", batch: batch)
  end
end
