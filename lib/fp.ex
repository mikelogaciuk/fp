defmodule Fp do
  @moduledoc """
  Module `Fp` with notes about `Elixir`.
  """

  @doc """
  Counts down from a given number to 0.

  Example of writing `comments`, adding `specs`, `recursion` using `pattern-matching`.

    ## Parameters

    * `n` - integer from which the countdown starts

    ## Returns

      * `{:er}` when no argument is provided
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

IO.inspect(Fp.count_down())
IO.inspect(Fp.count_down(-3))
IO.inspect(Fp.count_down(10))

## ----------------------------------------------------------------------------
## Basic data types
## ----------------------------------------------------------------------------

types_list = [
  # int
  333,
  # int
  0x1F,
  # float
  3.33,
  # atom whose value is also its name
  :hi,
  # tuple
  {1, 4, 6},
  # list
  [3, 4, [5]]
]

IO.inspect(types_list)

# Head & tail
#
#
[hd | tl] = [4, 88, 99, 256]
# => 4
IO.inspect(hd)
# => [88,99,256]
IO.inspect(tl)

# Destructuring
#
[_, sec | _bottom] = [33, 666, 999, 444, 11]

# 666
IO.inspect(sec)

# Checking ASCII number
# 102
IO.inspect(?f)

#  The list [89,99] via IO.inspect will return ~c"Xc"
#
#  Because:
#  * 88 is the ASCII code for 'X'
#  * 99 is the ASCII code for 'c'
#
# When all numbers in the list are within characters 32-126, it will try to convert them.
#
# To avoid this, use: IO.inspect([89, 99], charlists: :as_lists)

# List concat
IO.inspect([1, 123, 500] ++ [3])

# Ranges and mapping with lambda
some_range = 1..5
Enum.map(some_range, fn x -> IO.inspect(x) end)

# Lists again
#
# We also have functions like `List.first()`, `List.replace_at()` etc
warehouse = ["XLM129", 56.123, 78.000, 2000, false, :open]
warehouse_extended = [:Warsaw | warehouse]
IO.inspect(warehouse_extended)

# Keyword lists, my 'favourite'
#
# Used in functions to pass parameters (opts)
docker_opts = [runner: :swarm, env: [:prod, :staging], resources: [cpu: 20, mem: 48]]
docker_machines = ["dind.company.local", "actxl.company.local"]

docker_run = fn args ->
  Enum.map(args, fn h -> IO.inspect("Running app on host: #{h}") end)
end

docker_fun = fn opts, hosts ->
  if opts[:runner] == :swarm, do: docker_run.(hosts)
end

docker_fun.(docker_opts, docker_machines)

# Maps
#
#
receipt = %{
  store: 1,
  sale_id: 131,
  sale_number: 250_101,
  date: ~D[2025-12-12],
  lines: [
    %{
      line_number: 1,
      product: "Milk",
      sku: "XMA2193",
      quantity: 2,
      unit_price: 3.50,
      total: 7.00
    },
    %{
      line_number: 2,
      product: "Bread",
      sku: "213MD",
      quantity: 1,
      unit_price: 2.50,
      total: 2.50
    },
    %{
      line_number: 3,
      product: "Eggs",
      sku: "11AAXFR23",
      quantity: 3,
      unit_price: 5.00,
      total: 15.00
    }
  ],
  total_value: 24.50,
  payment_method: :card
}

IO.inspect("Receipt number is: #{receipt.sale_number}")
IO.inspect(receipt, label: "Receipt")

IO.inspect(receipt.lines, label: "Receipt Lines")
Enum.each(receipt.lines, fn line -> IO.inspect(line) end)

eggs_ln = Enum.find(receipt.lines, fn line -> line.product == "Eggs" end)
IO.inspect(eggs_ln, label: "Eggs line")

total_val = Enum.reduce(receipt.lines, 0, fn line, acc -> acc + line.total end)
IO.inspect(total_val, label: "Total positions value")

any_ruby? = Enum.any?(receipt.lines, fn line -> line == "Ruby" end)
IO.inspect(any_ruby?, label: "Any Ruby?")

# Pipe operator & Control flow (if, unless, case, cond) and errors
#
#
check_total = fn value ->
  case value do
    0 -> {:error, "Total can not be zero"}
    # 0 -> raise "Total can not be zero" # Uncomment to see a proper error
    _ -> {:ok, "Everything is fine"}
  end
end

defmodule ZeroTotalError do
  defexception message: "Total value can not be zero"
end

check_total_with_custom_error = fn value ->
  case value do
    0 -> {:error, "Total can not be zero"}
    # 0 -> raise ZeroTotalError # Uncomment to see a proper error
    _ -> {:ok, "Everything is fine"}
  end
end

# Will not raise any error since the value is higher than 0
total_val |> check_total.()
# Will raise an error or return a tuple with :error atom
0 |> check_total.()
# Will raise an error or return a tuple with :error atom
0 |> check_total_with_custom_error.()

# Another pipe example
some_text = "hello Mikey"

pre_processed_text =
  some_text
  |> String.upcase()
  |> String.split()
  |> Enum.map(fn word -> String.reverse(word) end)
  |> Enum.join(" ")

IO.inspect(pre_processed_text)

# Unless, the opposite of if/2
# Generally deprecated as of late 2025
some_if_unless_list = [6, 8, 9]

IO.inspect(
  unless(Enum.empty?(some_if_unless_list), do: "Unless list is empty - return this text")
)

# More convenient, the if/2
if Enum.empty?([]) do
  IO.inspect("Given list is empty.")
end

# You can use, Ruby `prose` style with `if` clause
if not Enum.empty?(some_if_unless_list) do
  IO.inspect("Given list is not empty.")
end

# Case with guards
case docker_opts[:runner] do
  docker_opts when docker_opts == :swarm -> IO.inspect("Running on Docker")
  _ -> "Unsupported runner"
end

# Cond
# It's good to use instead of truly nested `if cases`
temp = -12

cond do
  temp < 0 -> "Winter is coming..."
  temp > 15 -> "Spring is in the air"
  temp > 30 -> "Gosh, it's hot!"
  true -> "What the?"
end

# Guards
#
# Can be used `def` or `fn`
guard_in_lambda_fn = fn
  x when x > 0 -> "Positive number"
  x when x == 0 -> "This should not be a zero..."
  x when x < 0 -> "Check your values, the given is negative..."
end

IO.inspect(guard_in_lambda_fn.(0))

defmodule GuardsExample do
  def guarded_func(x) when x > 0, do: "Booooo, should be 0 or worse"
  def guarded_func(x) when x < 0, do: "That's more I like it"
  def guarded_func(0), do: "Ideally..."
end

IO.inspect(GuardsExample.guarded_func(0))

# Comprehensions
#
# You can use both ranges and other collections
list_expr = for n <- 36..99, do: n * (n - 2)
IO.inspect(list_expr)
# 20
resources = for {:resources, val} <- docker_opts, do: val[:cpu]
IO.inspect(resources)

list_expr
|> Enum.filter(fn elem -> elem > 8000 end)
|> Enum.join(", ")
|> IO.inspect(label: "Values higher than 8000 are: ")
