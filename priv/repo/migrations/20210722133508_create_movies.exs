defmodule HelloPhonix.Repo.Migrations.CreateMovies do
  use Ecto.Migration

  def change do
    create table(:movies) do
      add :title, :string
      add :tagline, :string

      timestamps()
    end

  end
end
