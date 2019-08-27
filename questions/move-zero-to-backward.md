# 把 0 排到最後面

有一個數字陣列，請寫一個 function，把裡面所有 0 的元素移到最後面，而其他元素保持順序。如：

```
Input: [0,1,0,3,12]
Output: [1,3,12,0,0]
```

在處理的時候，不能複製陣列，請最小化操作的次數。

```elixir
def solution(nums) do
  # code
end

IO.inspect solution([0, 0, 0, 2, 0, 1, 3, 4, 0, 0])
# 回傳 [2, 1, 3, 4, 0, 0, 0, 0, 0, 0]
```

## 解答

* [Elixir](/src/elixir/move_zero_to_backward.exs)
* [Kotlin](/src/kotlin/move_zero_to_backward.kts)
* [PHP](/src/php/move_zero_to_backward.php)
