defmodule RecFib do
  def fib_main() do
    IO.gets("")
    |> String.trim()
    |> String.to_integer()
    |> fib()
    |> IO.puts()
  end

  def fib(0), do: 0
  def fib(1), do: 1

  def fib(n) do
    fib(n - 1) + fib(n - 2)
  end
end
