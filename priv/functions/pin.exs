defmodule Greet do
  def for(name, greeting) do
    fn
      ^name -> "#{greeting} #{name}"
      _ -> "I don't know you..."
    end
  end
end
a = Greet.for("Atsushi", "Hi!!")
IO.puts(a.("Atsushi"))
IO.puts(a.("hoge"))
