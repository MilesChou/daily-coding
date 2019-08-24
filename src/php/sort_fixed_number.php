<?php

/**
 * @param array $input
 * @return array
 */
function solution(array $input)
{
    $count = array_count_values($input);
    ksort($count);

    $offset = 0;

    foreach($count as $k => $v) {
        array_splice($input, $offset, $v, array_fill(0, $v, $k));

        $offset += $v;
    }

    return $input;
}

// Example test
assert([1, 1, 2, 2, 3, 3, 3] === solution([3, 3, 2, 1, 3, 2, 1]));

// Only one number test
assert([1] === solution([1]));

// All same number test
assert([1, 1, 1] === solution([1, 1, 1]));

echo 'OK' . PHP_EOL;

exit(0);
