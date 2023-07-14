defmodule Dp do
  def dp() do
    IO.gets("")
    |> String.trim()
    |> String.to_integer()
    |> solve()
    |> Enum.join(" ")
    |> IO.puts()
  end

  def solve(n) do
    Enum.reduce(0..n, [], fn
      0, _acc -> []
      n, acc -> acc ++ [n] ++ acc
    end)
  end
end
