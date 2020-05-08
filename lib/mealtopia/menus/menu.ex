defmodule Mealtopia.Menus.Menu do
  @moduledoc """
   Schema for menu
  """
  import Ecto.Changeset
  use Ecto.Schema
  use Arc.Ecto.Schema

  alias MealtopiaWeb.Uploads.Images

  schema "menus" do
    field :name, :string
    field :description, :string
    field :image_one, Images.Type
    field :image_two, Images.Type
  end

  def changeset(menu, attrs) do
    menu
    |> cast(attrs, [:name, :description, :image_one, :image_two])
    |> cast_attachments(attrs, [:image_one, :image_two])
    |> validate_required([:name, :description, :image_one])
  end
end
