defmodule HelloPhonix.Repo.Migrations.CreateCharacter do
  use Ecto.Migration

  def change do
    create table(:character) do
      add :name, :string
      add :movie_id, references(:movies, on_delete: :nothing)

      timestamps()
    end

    create index(:character, [:movie_id])
  end
end
