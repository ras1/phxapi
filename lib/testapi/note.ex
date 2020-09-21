defmodule Testapi.Note do
  use Ecto.Schema
  import Ecto.Changeset

  schema "notes" do
    field :category, :string
    field :note, :string

    timestamps()
  end

  @doc false
  def changeset(note, attrs) do
    note
    |> cast(attrs, [:note, :category])
    |> validate_required([:note, :category])
  end
end
