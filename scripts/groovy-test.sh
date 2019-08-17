#!/bin/sh

set -e

# cd to root
if [ -e ./scripts/groovy-test.sh ]; then
    cd src/groovy
fi

groovy basic_mathematical_operations.groovy
