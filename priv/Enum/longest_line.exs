File.read!("/usr/share/dict/words")
|> String.split()
|> Enum.max_by(&String.length/1)
|> IO.inspect()
