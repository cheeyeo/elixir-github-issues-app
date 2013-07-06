defmodule Issues.Mixfile do
  use Mix.Project

  def project do
    [ app: :issues,
      version: "0.0.1",
      name: "Github Issues app",
      source_url: "http://github.com/cheeyeo/elixir-github-issues-app",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [ applications: [:httpotion] ]
  end

  # Returns the list of dependencies in the format:
  # { :foobar, "0.1", git: "https://github.com/elixir-lang/foobar.git" }
  defp deps do
    [
      {:httpotion,"0.2.0",[github: "myfreeweb/httpotion"]},
      {:jsonex,"0.1.1",[github: "devinus/jsonex"]},
      {:ex_doc, [github: "elixir-lang/ex_doc"] }
    ]
  end
end
