# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :leafy_explorer,
  ecto_repos: [LeafyExplorer.Repo]

# Configures the endpoint
config :leafy_explorer, LeafyExplorerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "KEoLhSrZbNYIkej0FLNZmdi9ZnuapB/83DR9D/uwu2dLnk6e9oQu9kXncx6VplAl",
  render_errors: [view: LeafyExplorerWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: LeafyExplorer.PubSub,
  live_view: [signing_salt: "9HReowTm"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
