defmodule TailRecursive do
  def sum(n), do: _sum(n, 0)
  def _sum(0, total), do: total
  def _sum(n, total), do: _sum(n - 1, n + total)
end

defmodule Recursive do
  def sum(0), do: 0
  def sum(n), do: n + sum(n - 1)
end
