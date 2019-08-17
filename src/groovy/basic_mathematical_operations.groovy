def op = { op, v1, v2 ->
  switch(op) {
    case '+':
      return v1 + v2
    case '-':
      return v1 - v2
    case '*':
      return v1 * v2
    case '/':
      return v1 / v2
  }
}

assert 11 == op("+", 4, 7)
assert -3 == op("-", 15, 18)
assert 25 == op("*", 5, 5)
assert 7 == op("/", 49, 7)

println 'OK'
