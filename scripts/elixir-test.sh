#!/bin/sh

set -e

# cd to root
if [ -e ./scripts/elixir-test.sh ]; then
    cd src/elixir
fi

elixir basic_mathematical_operations.exs
elixir staircase.exs
