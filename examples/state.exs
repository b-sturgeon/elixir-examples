defmodule TakeANumber do
  def start(), do: spawn(fn -> loop(0) end)

  defp report_state(pid, n) do
    send(pid, n)
    loop(n)
  end

  defp take_a_number(pid, n) do
    send(pid, n+1)
    loop(n+1)
  end

  defp stop(), do: nil

  def loop(n) do
    receive do
      {:report_state, sender_pid} -> report_state(sender_pid, n)
      {:take_a_number, sender_pid} -> take_a_number(sender_pid, n)
      :stop -> stop()
      _ -> loop(n)
    end
  end
end
