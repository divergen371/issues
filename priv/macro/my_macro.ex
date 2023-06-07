defmodule MyMacro do
  defmacro defkv(kv) do
    quote bind_quoted: [kv: kv] do
      Enum.each(kv, fn {k, v} -> def unquote(k)(), do: unquote(v) end)
    end
  end
end

defmodule MyModule do
  require MyMacro

  [zero: 0] |> MyMacro.defkv()
  [taro: 1, jiro: 2, saburo: 3] |> MyMacro.defkv()
end
