defmodule Testapi.Repo.Migrations.CreateLabels do
  use Ecto.Migration

  def change do
    create table(:labels) do
      add :name, :string

      timestamps()
    end

  end
end
