defmodule Fp.Countdown do
  @moduledoc """
  Module with notes about recursion and pattern-matching in Elixir.
  """

  @doc """
  Counts down from a given number to 0.

  Example of writing `comments`, adding `specs`, `recursion` using `pattern-matching`.

    ## Parameters

    * `n` - integer from which the countdown starts

    ## Returns

      * `{:err}` when no argument is provided
      * `{:err}` when n < 0
      * `{:ok, n}` for every number greater than 0
      * `{:ok, :done}` when it reaches 0

  """
  @spec count_down() :: {:err}
  def count_down(), do: {:err}

  @spec count_down(any()) :: {:err} | {:ok, :done}
  def count_down(0), do: {:ok, :done}
  def count_down(n) when n < 0, do: count_down()

  def count_down(n) do
    IO.puts(n)
    count_down(n - 1)
  end
end
