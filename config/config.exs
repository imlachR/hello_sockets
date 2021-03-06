# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :hello_sockets, HelloSocketsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "QEb5fYnenAGoSQo08I7a10yLpIgmF7xl4S+mMDuc11Q7adXW7C4OWbYBwmCWLMqT",
  render_errors: [view: HelloSocketsWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: HelloSockets.PubSub,
  live_view: [signing_salt: "+yEzfyBB"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"