#!/bin/sh

set -e

# cd to root
if [ -e ./scripts/elixir-test.sh ]; then
    cd src/elixir
fi

elixir basic_mathematical_operations.exs
elixir maximum_product_of_three.exs
elixir move_zero_to_backward.exs
elixir staircase.exs
