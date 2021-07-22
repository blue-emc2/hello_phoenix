defmodule HelloPhonix.Repo.Migrations.CreateComments do
  use Ecto.Migration

  def change do
    create table(:comments) do
      add :title, :string

      timestamps()
    end

  end
end
