# 基本數學運算器

寫一個可以做四則運算的處理器。它有三個參數 `operation`、`value1`、`value2`，函式會依據不同的 operation 做不同的運算

```elixir
SimpleMath.basic_op("+", 4, 7)     # Output: 11
SimpleMath.basic_op("-", 15, 18)   # Output: -3
SimpleMath.basic_op("*", 5, 5)     # Output: 25
SimpleMath.basic_op("/", 49, 7)    # Output: 7
```

## 解答

* [Elixir](/src/elixir/basic_mathematical_operations.exs)
