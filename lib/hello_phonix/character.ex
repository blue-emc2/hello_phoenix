defmodule HelloPhonix.Character do
  use Ecto.Schema
  import Ecto.Changeset

  schema "character" do
    field :name, :string
    belongs_to :movie, HelloPhonix.Movie

    timestamps()
  end

  @doc false
  def changeset(character, attrs) do
    character
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
