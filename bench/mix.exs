defmodule Bench.MixProject do
  use Mix.Project

  def project do
    [
      app: :bench,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_litedb, "~> 0.9.1"},
      {:exqlite, "~> 0.7.5"},
      {:raw_sqlite3, "~> 1.0.4"},
      {:benchee, "~> 1.0"}
    ]
  end
end
