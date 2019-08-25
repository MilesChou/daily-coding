#!/bin/sh

set -e

# cd to root
if [ -e ./scripts/ruby-test.sh ]; then
    cd src/ruby
fi

ruby k_th_largest_element.rb
