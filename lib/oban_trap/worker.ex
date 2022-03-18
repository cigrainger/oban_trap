defmodule ObanTrap.Worker do
  use Oban.Worker, queue: :default

  @impl Oban.Worker
  def perform(%Oban.Job{args: %{"type" => :spawn_link}}) do
    spawn_link(fn -> raise "foo" end)
    :ok
  end

  def perform(%Oban.Job{args: %{"type" => :flow}}) do
    1..10 |> Flow.from_enumerable() |> Flow.map(fn _ -> raise "foo" end) |> Enum.to_list()
    :ok
  end
end
