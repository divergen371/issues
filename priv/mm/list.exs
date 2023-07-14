defmodule Listlen do
  def leng([]), do: 0
  def leng([_ | t]), do: 1 + Enum.count(t)
end
