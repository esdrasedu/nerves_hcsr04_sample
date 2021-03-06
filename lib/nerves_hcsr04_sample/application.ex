defmodule NervesHcsr04Sample.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  @target Mix.Project.config()[:target]

  use Application

  def start(_type, _args) do
    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: NervesHcsr04Sample.Supervisor]
    Supervisor.start_link(children(@target), opts)
  end

  # List all child processes to be supervised
  def children("host") do
    [
      # Starts a worker by calling: NervesHcsr04Sample.Worker.start_link(arg)
      # {NervesHcsr04Sample.Worker, arg},
    ]
  end

  def children(_target) do
    [
      # Starts a worker by calling: NervesHcsr04Sample.Worker.start_link(arg)
      # {NervesHcsr04Sample.Worker, arg},
    ]
  end
end
