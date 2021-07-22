defmodule HelloPhonix.Movie do
  use Ecto.Schema
  import Ecto.Changeset

  schema "movies" do
    field :tagline, :string
    field :title, :string
    has_many :characters, HelloPhonix.Character

    timestamps()
  end

  @doc false
  def changeset(movie, attrs) do
    movie
    |> cast(attrs, [:title, :tagline])
    |> validate_required([:title, :tagline])
  end
end
