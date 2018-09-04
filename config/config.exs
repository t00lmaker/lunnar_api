# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :lunnar_api,
  ecto_repos: [LunnarApi.Repo]

# Configures the endpoint
config :lunnar_api, LunnarApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "WbfwhhQ9QShqqvrF+KRN5DDNk2XRbWnRW0M7WL1HAxtFOzXsLTyHdfpj06UTny3X",
  render_errors: [view: LunnarApiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: LunnarApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# Guardian config (jwt)
config :lunnar_api, LunnarApi.Guardian,
       issuer: "lunnar_api",
       secret_key: "rwYfXxu/L2A6KlwIRyzRLyEuit45DXkTyoHWIycmalttUSzW7E5I4zzdye7prqoM"
