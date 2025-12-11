defmodule Fp do
  @moduledoc """
  Moduł `Fp` z notatkami dot. `Elixir'a`.
  """

  @doc """
  Odlicza od podanej liczby do 0.

  Przykład pisania `komentarzy`, dodawania `spec'ów`, `rekurencji` z użyciem `pattern-matching`.

    ## Parametry

    * `n` - liczba całkowita, od której rozpoczyna się odliczanie

    ## Zwraca

      * `{:er}` dla braku argumentu
      * `{:err}` gdy n < 0
      * `{:ok, n}` dla każdej liczby większej od 0
      * `{:ok, :done}` gdy osiągnie 0

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

IO.inspect(Fp.count_down())
IO.inspect(Fp.count_down(-3))
IO.inspect(Fp.count_down(10))

## ----------------------------------------------------------------------------
## Podstawowe typy danych
## ----------------------------------------------------------------------------

types_list = [
333,       # int
0x1F,      # int
3.33,      # float
:hi,       # atom, którego wartość jest również nazwą
{1,4,6},   # krotka
[3,4,[5]], # lista
]

IO.inspect(types_list)

# Head & tail
[hd | tl] = [4,88,99,256]
IO.inspect(hd) # => 4
IO.inspect(tl) # => [88,99,256]

# Destrukturyzacja
[_, sec | _bottom] = [33,666,999,444,11]
IO.inspect(sec) # 666

# Sprawdzanie liczby ASCII
IO.inspect(?f) # 102

#  Tym samym lista [89,99] via IO.inspect, zwróci ~c"Xc"
#
#  Gdyż:
#  * 88 to kod ASCII dla 'X'
#  * 99 to kod ASCII dla 'c'
#
# Gdy wszystkie liczby w list mieszczą się w znakach 32-126, ten bedzie próbował to konwertować.
#
# By ominąć, użyj: IO.inspect([89, 99], charlists: as_lists)

# Łączenie list
IO.inspect([1,123, 500] ++ [3])

# Zakresy i mapowanie z pomocą lambdy
some_range = 1..5
Enum.map(some_range, fn x -> IO.inspect(x) end)
