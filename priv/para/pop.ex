defmodule Pop1 do
  def merazoma(n) do
    receive do
      {sender_pid, msg} ->
        send(sender_pid, {:ok, _merazoma(n, msg)})
        merazoma(n)
    end
  end

  defp _merazoma(n, msg) do
    Process.sleep(3000 + n * 500)
    IO.puts("メラゾーマ発動")
    "メラゾーマ #{n} : #{msg}"
  end
end

defmodule Pop0 do
  def merazoma(_n) do
    Process.sleep(5000)
    IO.puts("メラゾーマ発動")
    "メラゾーマ"
  end
end

defmodule Pop2 do
  def merazoma(n) do
    Process.sleep(5000)
    IO.puts("メラゾーマ発動 #{n}")
    "メラゾーマ #{n}"
  end
end

defmodule Pop3 do
  def merazoma(n) do
    Process.sleep(1000)
    IO.puts("メラゾーマ発動 #{n}")
    "メラゾーマ #{n}"
  end

  def mahyado(n) do
    Process.sleep(3000)
    IO.puts("マヒャド発動 #{n}")
    "マヒャド #{n}"
  end

  def medorowar(n) do
    magis = [fn -> Pop3.mahyado(n) end, fn -> Pop3.merazoma(n) end]

    res =
      magis
      |> Enum.map(fn func -> Task.async(func) end)
      |> Enum.map(fn task -> Task.await(task) end)

    IO.inspect(res)
    IO.puts("極大消失呪文 (メドローア)")
    "極大消失呪文 (メドローア)"
  end
end

defmodule Sender do
  def run(pid, mypid, send_msg) do
    send(pid, {mypid, send_msg})

    receive do
      {:ok, rcv_msg} ->
        IO.puts("receive message: #{rcv_msg}")
    after
      5000 ->
        IO.puts("応答なし")
    end
  end
end
