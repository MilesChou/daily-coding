workflow "Elixir Test" {
  on = "push"
  resolves = ["Test"]
}

action "Test" {
  uses = "MilesChou/elixir-action@master"
  args = "sh ./src/elixir/test.sh"
}
