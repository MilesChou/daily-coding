ExUnit.start

defmodule Solution do
  def move_zeros(list, check_position, first_zero) when length(list) > check_position do
    cond do
      Enum.at(list, check_position) == 0 -> move_zeros(list, check_position + 1, first_zero)
      true ->
        list
        |> List.replace_at(first_zero, Enum.at(list, check_position))
        |> List.replace_at(check_position, Enum.at(list, first_zero))
        |> move_zeros(check_position + 1, first_zero + 1)
    end
  end

  def move_zeros(list, check_position, _) when length(list) == check_position, do: list
  def move_zeros(list) when 1 >= length(list), do: list
  def move_zeros(list), do: move_zeros(list, 0, 0)
end

defmodule MoveZeroTest do
  use ExUnit.Case

  import Solution, only: [move_zeros: 1]

  test "Given test cases work" do
    assert [1, 3, 12, 0, 0] == move_zeros([0, 1, 0, 3, 12])
    assert [2, 1, 3, 4, 0, 0, 0, 0, 0, 0] == move_zeros([0, 0, 0, 2, 0, 1, 3, 4, 0, 0])
  end

  test "Addition test" do
    assert [] == move_zeros([])
    assert [0] == move_zeros([0])
    assert [1] == move_zeros([1])
    assert [0, 0, 0] == move_zeros([0, 0, 0])
    assert [1, 2, 3, 4] == move_zeros([1, 2, 3, 4])
  end
end
