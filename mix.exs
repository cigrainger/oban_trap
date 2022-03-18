defmodule ObanTrap.MixProject do
  use Mix.Project

  def project do
    [
      app: :oban_trap,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {ObanTrap.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:flow, "~>1.0"},
      {:oban, "~> 2.11"}
    ]
  end
end
