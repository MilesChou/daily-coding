ExUnit.start

# Leetcode easy7

defmodule Solution do
  @spec reverse(x :: integer) :: integer
  def reverse(x, base \\ 0)
  def reverse(_, base) when base > 2147483647, do: 0
  def reverse(_, base) when base < -2147483648, do: 0
  def reverse(x, base) when x == 0 do
    base
  end
  def reverse(x, base) do
    reverse(trunc(x/10),(rem(x, 10) + base * 10))
  end
end

defmodule ReverseIntegerTest do
  use ExUnit.Case

  test 'example testcase 1' do
    assert Solution.reverse(0) == 0
  end

  test 'example testcase 2' do
    assert Solution.reverse(123) == 321
  end

  test 'example testcase 3' do
    assert Solution.reverse(-123) == -321
  end

  test 'example testcase 4' do
    assert Solution.reverse(120) == 21
  end

  test 'example testcase 5' do
    assert Solution.reverse(1534236469) == 0
  end
end
