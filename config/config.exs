# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :curso_elixir_db,
  ecto_repos: [CursoElixirDb.Repo]

# Configures the endpoint
config :curso_elixir_db, CursoElixirDbWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "O5T3UED5mSR0MlmtgIkKv8PH9Vwy2sfs/stZoBuiobfcsep3Wx+YH2Rj52bS6LzW",
  render_errors: [view: CursoElixirDbWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: CursoElixirDb.PubSub,
  live_view: [signing_salt: "1rJVQ1KG"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
