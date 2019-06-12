defmodule TryLuerl.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Starts a worker by calling: TryLuerl.Worker.start_link(arg)
      # {TryLuerl.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: TryLuerl.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
