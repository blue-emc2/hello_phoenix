defmodule HelloPhonix.Distributor do
  use Ecto.Schema
  import Ecto.Changeset

  schema "distributors" do
    field :name, :string
    belongs_to :movie, HelloPhonix.Movie

    timestamps()
  end

  @doc false
  def changeset(distributor, attrs) do
    distributor
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
