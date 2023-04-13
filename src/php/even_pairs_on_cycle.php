<?php

function solution(array $A): int
{
    $count = 0;

    $n = count($A);

    if ($n === 1) {
        return $count;
    }

    for ($i = 0; $i < $n; $i++) {
        if (($A[$i] + $A[($i + 1) % $n]) % 2 == 0) {
            $count++;
            $i++;
        }
    }

    return $count;
}

// Example test
assert(2 === solution([4, 2, 5, 8, 7, 3, 7]));
assert(1 === solution([14, 21, 16, 35, 22]));
assert(3 === solution([5, 5, 5, 5, 5, 5]));

// One element
assert(0 === solution([1]));