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
    assert basic_op("+", 4, 7) == 11
    assert basic_op("-", 15, 18) == -3
    assert basic_op("*", 5, 5) == 25
    assert basic_op("/", 49, 7) == 7
  end
end
