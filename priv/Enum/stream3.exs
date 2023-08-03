File.stream!("/usr/share/dict/words")
|> Enum.max_by(&String.length/1)
|> IO.puts()
