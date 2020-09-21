defmodule Testapi.Repo.Migrations.AddLabelNameIndex do
  use Ecto.Migration

  def change do
    create index("labels", [:name], unique: true)
  end
end
