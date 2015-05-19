defmodule Apiv2.PageController do
  use Apiv2.Web, :controller

  plug :action

  def index(conn, _params) do
    render conn, "index.html"
  end
end
