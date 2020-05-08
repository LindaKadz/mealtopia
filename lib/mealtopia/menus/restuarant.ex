defmodule Mealtopia.Menus.Restuarant do
  @moduledoc """
   context where all restuarant logics occur
  """

  alias Mealtopia.Menus.Menu
  alias Mealtopia.Repo

  def create_menu(menu_params) do
    %Menu{}
    |> Menu.changeset(menu_params)
    |> Repo.insert
  end

  def get_all_menus do
    Repo.all(Menu)
  end

  def get_menu_by_id(id) do
    Repo.get(Menu, id)
  end
end
