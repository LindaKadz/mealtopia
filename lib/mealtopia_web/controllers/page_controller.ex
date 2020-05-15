defmodule MealtopiaWeb.PageController do
  use MealtopiaWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def mug(conn, _params) do
    render(conn, "mugs.html")
  end
end
