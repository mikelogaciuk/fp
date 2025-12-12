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
  # int
  333,
  # int
  0x1F,
  # float
  3.33,
  # atom, którego wartość jest również nazwą
  :hi,
  # krotka
  {1, 4, 6},
  # lista
  [3, 4, [5]]
]

IO.inspect(types_list)

# Head & tail
[hd | tl] = [4, 88, 99, 256]
# => 4
IO.inspect(hd)
# => [88,99,256]
IO.inspect(tl)

# Destrukturyzacja
[_, sec | _bottom] = [33, 666, 999, 444, 11]
# 666
IO.inspect(sec)

# Sprawdzanie liczby ASCII
# 102
IO.inspect(?f)

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
IO.inspect([1, 123, 500] ++ [3])

# Zakresy i mapowanie z pomocą lambdy
some_range = 1..5
Enum.map(some_range, fn x -> IO.inspect(x) end)

# Listy ponownie
# Mamy tu także funkcje jak `List.first()`, `List.replace_at()` etc
warehouse = ["XLM129", 56.123, 78.000, 2000, false, :open]
warehouse_extended = [:Warsaw | warehouse]
IO.inspect(warehouse_extended)

# Listy kluczy, mój 'favourite'
# Używane w funkcjach do przekazywarania parametrów (opts)
docker_opts = [runner: :swarm, env: [:prod, :staging], resources: [cpu: 20, mem: 48]]
docker_machines = ["dind.company.local", "actxl.company.local"]

docker_run = fn args ->
  Enum.map(args, fn h -> IO.inspect("Running app on host: #{h}") end)
end

docker_fun = fn opts, hosts ->
  if opts[:runner] == :swarm, do: docker_run.(hosts)
end

docker_fun.(docker_opts, docker_machines)

# Wyrażenia listowe
#
# W których przypadku można używać zarówno zakresów jak i inynch kolekcji
list_expr = for n <- 36..99, do: n * (n - 2)
IO.inspect(list_expr)
# 20
resources = for {:resources, val} <- docker_opts, do: val[:cpu]
IO.inspect(resources)

# Mapy (słowniki)
receipt = %{
  store: 1,
  receipt_id: 131,
  receipt_number: 250_101,
  date: ~D[2025-12-12],
  lines: [
    %{
      line_number: 1,
      product_name: "Milk",
      quantity: 2,
      unit_price: 3.50,
      total: 7.00
    },
    %{
      line_number: 2,
      product_name: "Bread",
      quantity: 1,
      unit_price: 2.50,
      total: 2.50
    },
    %{
      line_number: 3,
      product_name: "Eggs",
      quantity: 3,
      unit_price: 5.00,
      total: 15.00
    }
  ],
  total_value: 24.50,
  payment_method: :card
}

IO.inspect("Receipt number is: #{receipt.receipt_number}")
IO.inspect(receipt, label: "Receipt")
IO.inspect(receipt.lines, label: "Receipt Lines")

IO.puts("========Iteracja po liniach===========")
Enum.each(receipt.lines, fn line -> IO.inspect(line) end)

eggs_ln = Enum.find(receipt.lines, fn l -> l.product_name == "Eggs" end)
IO.inspect(eggs_ln, label: "Eggs line")

total_val = Enum.reduce(receipt.lines, 0, fn line, acc -> acc + line.total end)
IO.inspect(total_val, label: "Total positions value")
