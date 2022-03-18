import Config

config :oban_trap, ecto_repos: [ObanTrap.Repo]

config :oban_trap, ObanTrap.Repo,
  database: "ecto_simple",
  username: "chris",
  password: "postgres",
  socket_dir: "./.direnv/postgres"

config :oban_trap, Oban,
  repo: ObanTrap.Repo,
  queues: [default: 10]
