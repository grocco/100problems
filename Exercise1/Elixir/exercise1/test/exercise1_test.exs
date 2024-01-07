defmodule Exercise1Test do
  use ExUnit.Case
  doctest Exercise1

  test "last/1 returns the last element of a list" do
    assert Exercise1.last([1, 2, 3]) == 3
  end

  test "last/1 returns nil for an empty list" do
    assert Exercise1.last([]) == nil
  end

  test "last/1 returns the only element of a single-element list" do
    assert Exercise1.last([1]) == 1
  end
end
