# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phx_app,
  ecto_repos: [PhxApp.Repo]

# Configures the endpoint
config :phx_app, PhxApp.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "X2etijHZjMc2xbBSTJMdDeXUfdd6+trFya2yQpmhKp2u/pgEjvng7dHjqn+9ixUx",
  render_errors: [view: PhxApp.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhxApp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
