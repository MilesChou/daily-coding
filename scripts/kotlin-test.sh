#!/bin/sh

set -e

# cd to root
if [ -e ./scripts/kotlin-test.sh ]; then
    cd src/kotlin
fi

FILES="
move_zero_to_backward.kts
"

for file in ${FILES}; do
    if [ "`uname`" = "Darwin" ]; then
        docker run --rm -it -v `pwd`:/source zenika/kotlin:1.3-alpine kotlinc -script /source/${file}
    else
        kotlinc -script ${file}
    fi
done

