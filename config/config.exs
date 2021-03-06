# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :mealtopia,
  ecto_repos: [Mealtopia.Repo]

# Configures the endpoint
config :mealtopia, MealtopiaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "eAZxlyRKplqLt7upfeGT15ZFQ3TFAeq+fMpInKbA0pHX1wVppHm97sSzIGTuX88h",
  render_errors: [view: MealtopiaWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Mealtopia.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Arc Image Upload
config :arc,
  storage: Arc.Storage.Local

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
