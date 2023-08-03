[1, 2, 3, 4, 5]
|> Enum.map(&(&1 * &1))
|> Enum.with_index()
|> Enum.map(fn {v, i} -> v - i end)
|> IO.inspect()
