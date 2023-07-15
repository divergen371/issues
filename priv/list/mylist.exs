defmodule MyList do
  def len([]), do: 0
  def len([_ | tail]), do: 1 + len(tail)

  def span(from, to = from) do
    []
  end

  def span(from, to) do
    [from | span(from + 1, to)]
  end
end
