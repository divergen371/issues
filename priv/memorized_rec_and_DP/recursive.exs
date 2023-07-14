defmodule Main do
  def main() do
    IO.gets("")
    |> String.trim()
    |> String.to_integer()
    |> solve()
    |> Enum.join(" ")
    |> IO.puts()
  end

  def solve(1), do: [1]

  def solve(n) do
    s = solve(n - 1)
    s ++ [n] ++ s
  end
end
