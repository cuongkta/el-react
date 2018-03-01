# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :el_react,
  ecto_repos: [ElReact.Repo]

# Configures the endpoint
config :el_react, ElReactWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "jDPEF4T6uxY1UvTuea6W2F76+cEzA/FxEwAh9shDiIGtPRNnDbkLM7YpBNkiQ7TQ",
  render_errors: [view: ElReactWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ElReact.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
