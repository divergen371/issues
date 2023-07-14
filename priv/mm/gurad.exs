defmodule Guard do
  def what_is(x) when is_number(x) do
    cond do
      x === 0 ->
        "#{x} is a number"

      x > 0 ->
        "#{x} is a number and a positive integer."

      x < 0 ->
        "#{x} is a number and a negative integer."
    end
  end

  def what_is(x) when is_list(x) do
    case x do
      [] -> IO.puts("#{inspect(x)} is a empty list")
      _ -> IO.puts("#{inspect(x)} is a list")
    end
  end

  def what_is(x) when is_atom(x) do
    IO.puts("#{x} is an atom")
  end
end
