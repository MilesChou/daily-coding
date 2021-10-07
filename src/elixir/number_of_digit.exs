ExUnit.start

# This problem was asked by Amazon.
# Write a function that takes a natural number as input and returns the number of digits the input has.
# Constraint: don't use any loops.

defmodule Solution do
  @spec digits(x :: integer) :: integer
  def digits(x, base \\ 0)
  def digits(x, base) when x == 0 do
    cond do
      base == 0 -> 1
      true -> base
    end
  end
  def digits(x, base) do
    digits(trunc(x/10), base + 1)
  end
end

defmodule DigitsTest do
  use ExUnit.Case

  test 'example testcase 1' do
    assert Solution.digits(0) == 1
  end

  test 'example testcase 2' do
    assert Solution.digits(1) == 1
  end

  test 'example testcase 3' do
    assert Solution.digits(12) == 2
  end

  test 'example testcase 4' do
    assert Solution.digits(123) == 3
  end

  test 'example testcase 5' do
    assert Solution.digits(1234567) == 7
  end
end
