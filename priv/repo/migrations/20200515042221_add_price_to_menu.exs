defmodule Mealtopia.Repo.Migrations.AddPriceToMenu do
  use Ecto.Migration

  def change do
    alter table(:menus) do
      add :price, :string, null: false
    end
  end
end
