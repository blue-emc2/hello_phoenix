defmodule HelloPhonix.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    has_many :comments, Comment

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [])
    |> validate_required([])
  end
end
