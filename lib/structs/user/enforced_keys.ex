defmodule Fp.Structs.User.EnforcedKeys do
  @moduledoc """
  Example of module/struct with enforced keys and "typing"
  """
  @enforce_keys [:id]
  @type t :: %__MODULE__{
          id: pos_integer(),
          name: String.t() | nil,
          company: :aws | :google | :microsoft
        }
  defstruct [:id, name: nil, company: :aws]
end
