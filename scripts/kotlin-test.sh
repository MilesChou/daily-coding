#!/bin/sh

set -e

# cd to root
if [ -e ./scripts/kotlin-test.sh ]; then
    cd src/kotlin
fi

FILES="
move_zero_to_backward.kts
"

if [ "`uname`" = "Darwin" ]; then
    for file in ${FILES}; do
      docker run --rm -it -v `pwd`:/source zenika/kotlin:1.3-alpine kotlinc -script /source/${file}
    done
else
    kotlinc -script ${file}
fi
