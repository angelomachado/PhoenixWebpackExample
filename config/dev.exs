use Mix.Config

# For development, we disable any cache and enable
# debugging and code reloading.
#
# The watchers configuration can be used to run external
# watchers to your application. For example, we use it
# with brunch.io to recompile .js and .css sources.
config :phoenix_webpack, PhoenixWebpack.Endpoint,
  http: [port: 4000],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  #Brunch configuration removed
  #watchers: [node: ["node_modules/brunch/bin/brunch", "watch", "--stdin"]]

  #Webpack configuration added
  watchers: [node: ["node_modules/webpack/bin/webpack.js",
                      "--watch-stdin", "--progress", "--colors"]]
# Watch static and templates for browser reloading.
config :phoenix_webpack, PhoenixWebpack.Endpoint,
  live_reload: [
    patterns: [
      ~r{priv/static/.*(js|css|png|jpeg|jpg|gif|svg)$},
      ~r{priv/gettext/.*(po)$},
      ~r{web/views/.*(ex)$},
      ~r{web/templates/.*(eex)$}
    ]
  ]

# Do not include metadata nor timestamps in development logs
config :logger, :console, format: "[$level] $message\n"

# Set a higher stacktrace during development.
# Do not configure such in production as keeping
# and calculating stacktraces is usually expensive.
config :phoenix, :stacktrace_depth, 20

# Configure your database
config :phoenix_webpack, PhoenixWebpack.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "elixir",
  password: "elixir",
  database: "phoenix_webpack_dev",
  hostname: "localhost",
  pool_size: 10
