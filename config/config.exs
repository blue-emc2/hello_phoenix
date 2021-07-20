# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :hello_phonix,
  ecto_repos: [HelloPhonix.Repo]

# Configures the endpoint
config :hello_phonix, HelloPhonixWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "jmBhiCxjDd6w4A99z6xwymRyXJA0GA8jxekdh2Bq+1tDo/vEK1LZq5uDpfORm6bc",
  render_errors: [view: HelloPhonixWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: HelloPhonix.PubSub,
  live_view: [signing_salt: "pShpzAmZ"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
