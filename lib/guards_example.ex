defmodule Fp.GuardsExample do
  @moduledoc """
  Examples of using guards in function definitions.
  """

  @doc """
  Example of named guarded function.
  """
  @spec guarded_func(any()) :: <<_::64, _::_*8>>
  def guarded_func(x) when x > 0, do: "Booooo, should be 0 or worse"
  def guarded_func(x) when x < 0, do: "That's more I like it"
  def guarded_func(0), do: "Ideally..."
end
