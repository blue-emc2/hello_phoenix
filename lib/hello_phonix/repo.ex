defmodule HelloPhonix.Repo do
  use Ecto.Repo,
    otp_app: :hello_phonix,
    adapter: Ecto.Adapters.Postgres
end
