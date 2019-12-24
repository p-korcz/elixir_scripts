defprotocol MyList do
  def max(list)
  def min(list)
end

defimpl MyList, for: List do
  @moduledoc """
      Provides functions:
      'max/1' to find the biggest number in a list
      'min/1' to find the smallest number in a list
  """

  @doc """
  Finds the biggest number in a list

  #Parameters

  -[] list of numbers

  ## Examples

  iex> MyList.max([1,4,2,3])
  4
  """
  @spec max(List.t()) :: List.t()
  def max([head | [h | t]]) when head >= h, do: max([head | t])
  def max([head | [h | t]]) when head < h, do: max([h | t])

  @spec max(List.t()) :: Integer.t()
  def max([result]), do: result

  @doc """
  Finds the smallest number in a list

  #Parameters

  -[] list of numbers

  ## Examples

  iex> MyList.min([1,4,2,3])
  1
  """
  @spec min(List.t()) :: List.t()
  def min([head | [h | t]]) when head > h, do: min([h | t])
  def min([head | [h | t]]) when head <= h, do: min([head | t])

  @spec max(List.t()) :: Integer.t()
  def min([result]), do: result
end
