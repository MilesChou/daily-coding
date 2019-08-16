workflow "Test" {
  on = "push"
  resolves = [
    "Elixir Test",
    "Lua Test",
    "Node Test",
    "PHP Test",
  ]
}

action "Elixir Test" {
  uses = "MilesChou/elixir-action@master"
  args = "sh ./scripts/elixir-test.sh"
}

action "Lua Test" {
  uses = "docker://mileschou/lua:alpine"
  args = "sh ./scripts/lua-test.sh"
}

action "Node Test" {
  uses = "docker://node:alpine"
  args = "sh ./scripts/node-test.sh"
}

action "PHP Test" {
  uses = "docker://php:alpine"
  args = "sh ./scripts/php-test.sh"
}
