defmodule LeafyExplorer.Repo.Migrations.CreatePlantsTable do
  use Ecto.Migration

  def up do
    create table(:plants) do
      add :name, :string
      add :latin_name, :string
      add :family_id, references(:families)
    end
  end
end
