defmodule Test2 do
  def unfold_test(t) do
    Stream.unfold(1, fn
      n -> {n, n * 2}
      512 -> nil
    end)
    |> Enum.take(t)
  end
end
