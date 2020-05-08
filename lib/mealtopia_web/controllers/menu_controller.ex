defmodule MealtopiaWeb.MenuController do
  use MealtopiaWeb, :controller

  alias Mealtopia.Menus.Menu
  alias Mealtopia.Menus.Restuarant

  def new(conn, _params) do
    changeset = Menu.changeset(%Menu{}, %{})
    render(conn, "new.html", changeset: changeset)
  end

  def index(conn, _params) do
    menus = Restuarant.get_all_menus
    render(conn, "index.html", menus: menus)
  end

  def create(conn, %{"menu" => menu_params}) do
    case Restuarant.create_menu(menu_params) do
      {:ok, _menu} ->
         conn
         |> put_flash(:info, "You have successfully created a new menu!")
         |> redirect(to: Routes.menu_path(conn, :index))
      {:error, _reason} ->
        conn
        |> put_flash(:error, "Something went wrong, try again")
        |> render("new.html")
    end
  end

  def show(conn, %{"id" => id}) do
    menu = Restuarant.get_menu_by_id(id)
    render(conn, "show.html", menu: menu)
  end
end
