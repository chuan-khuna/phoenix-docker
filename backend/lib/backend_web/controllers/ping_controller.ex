defmodule BackendWeb.PingController do
  use BackendWeb, :controller

  def index(conn, _params) do
    json(conn, %{message: "Hello, World!"})
  end
end
