# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :colormark_me,
  ecto_repos: [ColormarkMe.Repo]

# Configures the endpoint
config :colormark_me, ColormarkMe.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "uUgCqPzL/DKw4udDKyHdbqLfQKLn86DJXkqZQkLtKIrwvhxo0Te8/NY3vonLyqaI",
  render_errors: [view: ColormarkMe.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ColormarkMe.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
