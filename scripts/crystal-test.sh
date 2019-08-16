#!/bin/sh

set -e

# cd to root
if [ -e ./scripts/crystal-test.sh ]; then
    cd src/crystal
fi

crystal spec
