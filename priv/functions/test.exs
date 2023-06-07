defmodule MyMod do
  def test(%User{name: "Alice", age: 22} = var) do
    IO.inspect(var)
  end
end
