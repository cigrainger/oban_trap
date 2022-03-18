defmodule ObanTrap.Repo do
  use Ecto.Repo,
    otp_app: :oban_trap,
    adapter: Ecto.Adapters.Postgres
end
