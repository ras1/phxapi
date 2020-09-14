# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :testapi,
  ecto_repos: [Testapi.Repo]

# Configures the endpoint
config :testapi, TestapiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "o9JI1jgH+V1JEbCZvlxDXG7kIyxeU08SQBor6DzGOKXyUGE4wY702RPitNUxxWfA",
  render_errors: [view: TestapiWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Testapi.PubSub,
  live_view: [signing_salt: "DPvvw98x"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
