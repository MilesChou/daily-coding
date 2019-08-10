#!/bin/sh

set -e

# cd to root
if [ -e ./src/elixir/test.sh ]; then
    cd src/elixir
fi

elixir staircase.exs
