defmodule HelloPhonixWeb.PageView do
  use HelloPhonixWeb, :view

  def render("index.html", assigns) do
    "rendering with assigns #{inspect(Map.keys(assigns))}"
  end
end
