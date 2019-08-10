workflow "Test" {
  on = "push"
  resolves = [
    "Elixir Test",
    "Node Test",
  ]
}

action "Elixir Test" {
  uses = "MilesChou/elixir-action@master"
  args = "sh ./scripts/elixir-test.sh"
}

action "Node Test" {
  uses = "docker://node:alpine"
  args = "sh ./scripts/node-test.sh"
}
