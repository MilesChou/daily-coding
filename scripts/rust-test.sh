#!/bin/sh

set -e

# cd to root
if [ -e ./scripts/rust-test.sh ]; then
    cd src/rust
fi

cargo test
