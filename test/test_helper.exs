ExUnit.start

Mix.Task.run "ecto.create", ~w(-r PhoenixWebpack.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r PhoenixWebpack.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(PhoenixWebpack.Repo)

