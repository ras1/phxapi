defmodule TestapiWeb.PageController do
  use TestapiWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
