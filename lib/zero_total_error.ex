defmodule Fp.ZeroTotalError do
  @moduledoc """
  Custom exception for zero total values.
  """
  defexception message: "Total value can not be zero"
end
