defmodule Chop do
  @moduledoc false

  defp f_middle(a, b), do: div(a + b, 2)

  defguardp is_not_in_range(actual, a, b) when actual < a or actual > b

  def guess(actual, a..b) when is_not_in_range(actual, a, b), do: "Number's not in range"
  def guess(actual, a..b) when actual == div(a + b, 2), do: f_middle(a, b)

  def guess(actual, a..b) when actual < div(a + b, 2) do
    max_range = f_middle(a, b)
    IO.puts("Is it #{max_range}")
    guess(actual, a..max_range)
  end

  def guess(actual, a..b) when actual > div(a + b, 2) do
    min_range = f_middle(a, b)
    IO.puts("Is it #{min_range}")
    guess(actual, min_range..b)
  end
end
