ExUnit.start

defmodule Solution do
  def maximum_product_of_three(list) do
    sorted = Enum.sort(list)
    filter_zero = Enum.filter(sorted, fn x -> x != 0 end)
    product = fn x, c -> x * c end

    cond do
      3 >= length(list) ->
        Enum.reduce(list, 1, product)
      0 == Enum.filter(list, fn x -> x >= 0 end) |> length() ->
        Enum.slice(sorted, -3, 3) |> Enum.reduce(1, product)
      0 == Enum.filter(list, fn x -> x <= 0 end) |> length() ->
        Enum.slice(sorted, -3, 3) |> Enum.reduce(1, product)
      3 > length(filter_zero) ->
        0
      true ->
        left = Enum.slice(sorted, 0, 2)
        right = Enum.slice(sorted, -2, 2)
        left_product = List.first(left) * List.last(left)
        right_product = List.first(right) * List.last(right)

        cond do
          left_product >= right_product -> left_product * List.last(right)
          right_product > left_product ->
            left_product_right_one = left_product * List.last(right)
            right_product_right_three = right_product * (Enum.slice(sorted, -3, 1) |> List.first)

            cond do
              left_product_right_one >= right_product_right_three -> left_product_right_one
              right_product_right_three > left_product_right_one ->right_product_right_three
            end
        end
    end
  end
end

defmodule MaxiumProductOfThreeTest do
  use ExUnit.Case

  import Solution, only: [maximum_product_of_three: 1]

  test "Given test cases work" do
    assert 128 == maximum_product_of_three([-4, -4, 2, 8])
  end

  test "Addition test" do
    assert 1 == maximum_product_of_three([])
    assert 2 == maximum_product_of_three([2])
    assert 6 == maximum_product_of_three([1, 2, 3])
    assert -6 == maximum_product_of_three([-1, -2, -3])
    assert 60 == maximum_product_of_three([1, 2, 3, 4, 5])
    assert -6 == maximum_product_of_three([-1, -2, -3, -4, -5])
    assert 40 == maximum_product_of_three([1, 2, -3, -4, -5])
    assert 60 == maximum_product_of_three([-1, 2, 3, -4, -5])
    assert 40 == maximum_product_of_three([-1, -2, 3, 4, -5])
    assert 30 == maximum_product_of_three([-1, -2, -3, 4, 5])
    assert 60 == maximum_product_of_three([1, 2, 3, -4, -5])
    assert 24 == maximum_product_of_three([-1, 2, 3, 4, -5])
    assert 60 == maximum_product_of_three([-1, -2, 3, 4, 5])
  end

  test "Zero test" do
    assert 0 == maximum_product_of_three([0])
    assert 0 == maximum_product_of_three([0, 1, 2])
    assert 0 == maximum_product_of_three([0, 0, 1, 2])
    assert 0 == maximum_product_of_three([0, 0, 0, 1])
    assert 6 == maximum_product_of_three([0, 1, 2, 3])
    assert 0 == maximum_product_of_three([-4, 0, 1, 2])
    assert 12 == maximum_product_of_three([-4, -3, 0, 1])
    assert 0 == maximum_product_of_three([-4, -3, -2, 0])
    assert 48 == maximum_product_of_three([-4, -3, 0, 3, 4])
  end
end
