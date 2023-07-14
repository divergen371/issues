defmodule Example do
  @author "Dave Thomas"
  def get_author do
    @author
  end
end
IO.puts(Example.get_author())
