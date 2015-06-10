defmodule Apiv2.Router do
  use Apiv2.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/config", Apiv2 do
    pipe_through :browser # Use the default browser stack
    get "/", PageController, :index
  end

  scope "/apiv2", Apiv2 do
    pipe_through :api
    resources "/cameras", CameraController
    resources "/tiles", TileController
    resources "/appointments", AppointmentController    
  end
end
