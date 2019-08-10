#!/bin/sh

set -e

# cd to root
if [ -e ./scripts/node-test.sh ]; then
    cd src/node
fi

node staircase.js
