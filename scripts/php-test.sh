#!/bin/sh

set -e

# cd to root
if [ -e ./scripts/php-test.sh ]; then
    cd src/php
fi

php longest_substring.php
php move_zero_to_backward.php
php sort_fixed_number.php
