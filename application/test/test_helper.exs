ExUnit.start

Mix.Task.run "ecto.create", ~w(-r OauthExample.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r OauthExample.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(OauthExample.Repo)

