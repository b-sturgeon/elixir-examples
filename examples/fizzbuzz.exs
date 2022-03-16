defmodule Fizzbuzz do
  def fizzbuzz(min, max), do: Enum.each(min..max, &fizzbuzz/1)
  def fizzbuzz(n) when rem(n,3) == 0 and rem(n,5) == 0, do: IO.puts("fizzbuzz")
  def fizzbuzz(n) when rem(n,3) == 0, do: IO.puts("fizz")
  def fizzbuzz(n) when rem(n,5) == 0, do: IO.puts("buzz")
  def fizzbuzz(n), do: IO.puts(n)
end

Fizzbuzz.fizzbuzz(1, 20)
