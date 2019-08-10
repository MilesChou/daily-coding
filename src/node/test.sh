#!/bin/sh

set -e

# cd to root
if [ -e ./src/node/test.sh ]; then
    cd src/node
fi

node staircase.js
