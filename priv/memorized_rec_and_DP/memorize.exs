defmodule Main do
  def main() do
    :ets.new(:memo, [:set, :protected, :named_table])

    IO.gets("")
    |> String.trim()
    |> String.to_integer()
    |> solve()
    |> Enum.join(" ")
    |> IO.puts()

    :ets.delete(:memo)
  end

  def solve(n) do
    case :ets.lookup(:memo, n) do
      [{^n, result}] ->
        result

      [] ->
        s = solve_s(n)
        :ets.insert(:memo, {n, s})
        s
    end
  end

  def solve_s(1), do: [1]

  def solve_s(n) do
    s = solve(n - 1)
    s ++ [n] ++ s
  end
end
