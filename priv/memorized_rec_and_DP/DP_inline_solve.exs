defmodule Dp do
  def dp() do
    IO.gets("")
    |> String.trim()
    |> String.to_integer()
    |> then(
      &Enum.reduce(0..&1, [], fn
        0, _acc -> []
        n, acc -> acc ++ [n] ++ acc
      end)
    )
    |> Enum.join(" ")
    |> IO.puts()
  end
end
