defmodule Zen do
  def answer do
    "ぃだのせをせをのぃだ"
    |> to_charlist()
    |> take_one_step_forward()
    |> to_string()
  end

  def take_one_step_forward(list) do
    dbg(list)
    new_list = list |> Enum.map(&(&1 + 1))
    dbg(new_list)

    new_list
  end
end
