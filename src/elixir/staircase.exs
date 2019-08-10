ExUnit.start

defmodule Staircase do
  def solution(x) do
    recursive([0, 1], x)
  end

  def recursive([_, b], n) when n == 0, do: b
  def recursive([a, b], n), do: recursive([b, a + b], n - 1)
end

defmodule StaircaseTest do
  use ExUnit.Case

  test 'example testcase 1' do
    assert Staircase.solution(4) == 5
  end

  test 'example testcase 2' do
    assert Staircase.solution(5) == 8
  end

  test 'some test' do
    assert Staircase.solution(1) == 1
    assert Staircase.solution(2) == 2
    assert Staircase.solution(3) == 3
    assert Staircase.solution(4) == 5
    assert Staircase.solution(5) == 8
    assert Staircase.solution(6) == 13
  end
end
