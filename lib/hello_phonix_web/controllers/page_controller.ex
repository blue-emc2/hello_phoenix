defmodule HelloPhonixWeb.PageController do
  use HelloPhonixWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
