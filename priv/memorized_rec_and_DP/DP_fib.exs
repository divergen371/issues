defmodule DpFib do
  def fib_main() do
    IO.gets("")
    |> String.trim()
    |> String.to_integer()
    |> fib()
    |> IO.puts()
  end

  def fib(n) do
    0..n
    |> Enum.reduce([], fn
      0, acc -> [0 | acc]
      1, acc -> [1 | acc]
      # _, acc = [a, b | _] -> [a + b | acc]
      _, [a, b | _] -> [a + b | [a]]
    end)
    |> hd()
  end
end
