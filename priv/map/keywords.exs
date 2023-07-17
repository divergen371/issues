defmodule Canvas do
  @default [fg: "black", bg: "white", font: "Merriweaher"]

  def draw_text(text, opts \\ []) do
    opts = Keyword.merge(@default, opts)
    IO.puts("Drawing text #{inspect(text)}")
    IO.puts("Foreground   #{opts[:fg]}")
    IO.puts("Background   #{Keyword.get(opts, :bg)}")
    IO.puts("Font:        #{Keyword.get(opts, :font)}")
    IO.puts("Pattern:     #{Keyword.get(opts, :pattern, "solid")}")
    IO.puts("Style:       #{inspect(Keyword.get_values(opts, :style))}")
  end
end
