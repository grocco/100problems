defmodule Exercise1 do
  @moduledoc """
  Documentation for `Exercise1 - Last element of a list`.
  """

  @doc """
  Returns the last element of a list.

  ## Examples

      iex> Exercise1.last([1, 2, 3])
      3

  """
  def last([]), do: nil
  def last([head]), do: head
  def last([_head | tail]), do: last(tail)
end
