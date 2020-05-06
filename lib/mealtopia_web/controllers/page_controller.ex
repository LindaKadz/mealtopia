defmodule MealtopiaWeb.PageController do
  use MealtopiaWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
