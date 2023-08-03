[1, 2, 3, 4]
|> Stream.map(&(&1 * &1))
|> IO.inspect()
|> Stream.map(&(&1 + 1))
|> IO.inspect()
|> Stream.filter(fn x -> rem(x, 2) == 1 end)
|> IO.inspect()
|> Enum.to_list()
|> IO.inspect()
