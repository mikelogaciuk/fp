defmodule FpTest do
  use ExUnit.Case
  doctest Fp.Runner

  test "greets the world" do
    assert Fp.Runner.hello() == :world
  end
end
