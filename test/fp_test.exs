defmodule FpTest do
  use ExUnit.Case
  doctest Fp

  test "greets the world" do
    assert Fp.hello() == :world
  end
end
