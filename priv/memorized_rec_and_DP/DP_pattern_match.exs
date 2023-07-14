defmodule Dp do
  def dp() do
    IO.gets("")
    |> String.trim()
    |> String.to_integer()
    |> then(fn n -> Enum.reduce(0..n, [], &sub/2) end)
    |> Enum.join(" ")
    |> IO.puts()
  end

  defp sub(0, _), do: []
  defp sub(n, acc), do: acc ++ [n] ++ acc
end
