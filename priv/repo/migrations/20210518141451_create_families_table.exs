defmodule LeafyExplorer.Repo.Migrations.CreateFamiliesTable do
  use Ecto.Migration

  def up do
    create table(:families) do
      add :name, :string
      add :latin_name, :string
      add :geo_origin, :string

      timestamps()
    end
  end

  def down do
    drop table(:families)
  end
end
