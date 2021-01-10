# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :shadowc,
  ecto_repos: [Shadowc.Repo]

# Configures the endpoint
config :shadowc, ShadowcWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Upt03YgD9QlBAi8yEfmpLxNX7mSPgNkaNYLTYBNRWD6YEu7z6g46Nq0OmQ0s/DDK",
  render_errors: [view: ShadowcWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Shadowc.PubSub,
  live_view: [signing_salt: "7gwynilr"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
