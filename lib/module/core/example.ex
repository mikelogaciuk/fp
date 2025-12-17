defmodule Fp.Module.Core.Example do
  @moduledoc """
  Module documentation
  """

  @spec fly() :: list()
  @doc """
  Named function documentation
  """
  def fly do
    for n <- 5..10, do: n * :rand.uniform(100)
  end
end
