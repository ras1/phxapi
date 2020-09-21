defmodule Testapi.Repo.Migrations.CreateNotes do
  use Ecto.Migration

  def change do
    create table(:notes) do
      add :note, :string
      add :label_id, references("labels")

      timestamps()
    end

  end
end
