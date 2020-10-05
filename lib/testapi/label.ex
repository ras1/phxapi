defmodule Testapi.Label do
  use Ecto.Schema
  import Ecto.Changeset

  schema "labels" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(label, params) do
    label
    |> cast(params, [:name])
    |> unique_constraint([:name])
    |> validate_required([:name])
  end
end
