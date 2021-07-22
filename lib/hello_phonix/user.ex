defmodule HelloPhonix.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field(:bio, :string)
    field(:email, :string)
    field(:name, :string)
    field(:number_of_pets, :integer)

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :email, :bio, :number_of_pets])
    |> validate_required([:name, :email, :bio, :number_of_pets])

    # bioは2文字以上必要
    # |> validate_length(:bio, min: 2)
    # formatチェック
    # |> validate_format(:email, ~r/@/)
  end
end
