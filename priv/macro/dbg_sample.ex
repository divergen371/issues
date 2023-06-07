"Elixir is cool!!"
|> String.trim_trailing("!")
|> String.split()
|> List.first()
|> dbg()
