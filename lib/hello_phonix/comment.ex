defmodule HelloPhonix.Comment do
  use Ecto.Schema
  import Ecto.Changeset

  schema "comments" do
    field :title, :string
    belongs_to :post, Post

    timestamps()
  end

  @doc false
  def changeset(comment, attrs) do
    comment
    |> cast(attrs, [:title])
    |> validate_required([:title])
  end
end
