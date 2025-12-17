defmodule Fp.Structs.User.DefaultValueAnother do
  @moduledoc """
  Another example of struct with mixed default and required fields.
  """
  defstruct [:id, name: nil]
end
