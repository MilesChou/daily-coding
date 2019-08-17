ExUnit.start

defmodule SimpleMath do
  def basic_op("+", v1, v2) ,do: v1 + v2
  def basic_op("-", v1, v2) ,do: v1 - v2
  def basic_op("*", v1, v2) ,do: v1 * v2
  def basic_op("/", v1, v2) ,do: v1 / v2
end

defmodule SimpleMathTest do
  use ExUnit.Case

  import SimpleMath, only: [basic_op: 3]

  test "Given test cases work" do
    assert 11 == basic_op("+", 4, 7)
    assert -3 == basic_op("-", 15, 18)
    assert 25 == basic_op("*", 5, 5)
    assert 7 == basic_op("/", 49, 7)
  end
end
