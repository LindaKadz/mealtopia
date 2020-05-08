defmodule Mealtopia.Repo.Migrations.CreateMenus do
  use Ecto.Migration

  def change do
    create table("menus") do
      add :name, :string, null: false
      add :description, :text, null: false
      add :image_one, :string, null: false 
      add :image_two, :string
    end
  end
end
