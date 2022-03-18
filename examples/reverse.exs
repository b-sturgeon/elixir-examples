defmodule Recursive do
  def reverse(list), do: reverse(list, [])
  def reverse([], rlist), do: rlist
  def reverse([head|tail], rlist), do: reverse(tail, [head|rlist])
end

Recursive.reverse([1,2,3,4])
  |> Enum.each(&IO.puts/1)
