defmodule HelloPhonix.Movie do
  use Ecto.Schema
  import Ecto.Changeset

  schema "movies" do
    field :tagline, :string
    field :title, :string
    # 一対多を実現
    has_many :characters, HelloPhonix.Character
    # 一対一を実現
    has_one(:distributor, HelloPhonix.Distributor)
    # 多対多を実現
    many_to_many(:actors, HelloPhonix.Actor, join_through: "movies_actors")

    timestamps()
  end

  @doc false
  def changeset(movie, attrs) do
    movie
    |> cast(attrs, [:title, :tagline])
    |> validate_required([:title, :tagline])
  end
end
