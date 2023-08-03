[1, 2, 3, 4]
|> Enum.map(&(&1 * &1))
|> IO.inspect()
|> Enum.map(&(&1 + 1))
|> IO.inspect()
|> Enum.filter(fn x -> rem(x, 2) == 1 end)
|> IO.inspect()
