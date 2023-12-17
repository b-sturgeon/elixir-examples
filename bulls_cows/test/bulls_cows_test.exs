defmodule BullsCowsTest do
  use ExUnit.Case
  doctest BullsCows

  test "greets the world" do
    assert BullsCows.hello() == :world
  end
end
