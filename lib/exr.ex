defmodule Exr do
  @moduledoc """
  Documentation for `Exr`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Exr.hello()
      :world
  """
  def hello do
    :world
  end

  @doc """
  Prosty przykład rekurencji w Elixir'ze, w oparciu o pattern-matching.
  """
  def count_down(n) when n < 0, do: (count_down(0))
  def count_down(0), do: :done
  def count_down(n), do: ({:ok, n}; count_down(n - 1))

  defmodule Exr.Fp.SaleTransaction do
    @moduledoc """
    Dokumentacja dla `SaleTransaction` i pprzykładu z `endofunktorem` w Elixir.

    `Endofuntor` w FP to nic innego jak `typ`, który `opakowuje` jakąś wartość, ale nadal pozostaje w tej samej kategorii typów.
    """

    @type currency :: :pln | :usd | :eur

    @type t :: %Exr.Fp.SaleTransaction{
      id: non_neg_integer(),
      amount: float(),
      currency: currency(),
      is_refund: boolean()
    }

    defstruct [:id, :amount, :currency, :is_refund]
  end



end

# Funkcja anonimowa
foo = fn -> :ok end
bar = fn (x) -> (:o; x) end

foo.()
bar.(2)

IO.puts(Exr.count_down(5))
IO.puts(Exr.count_down(-3))
