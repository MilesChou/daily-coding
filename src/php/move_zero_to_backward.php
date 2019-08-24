<?php
/**
 * NOTICE: Ensure PHP version is 7.1+
 */

/**
 * @param array $input
 * @return array
 */
function solution(array $input)
{
    $lastZero = 0;

    foreach ($input as $k => &$v) {
        if (0 !== $v) {
            [$input[$lastZero], $v] = [$v, $input[$lastZero]];
            $lastZero++;
        }
    }
    return $input;
}

// Example test
assert([1, 3, 12, 0, 0] === solution([0, 1, 0, 3, 12]));
assert([2, 1, 3, 4, 0, 0, 0, 0, 0, 0] === solution([0, 0, 0, 2, 0, 1, 3, 4, 0, 0]));

// Empty list
assert([] === solution([]));

// One number test
assert([0] === solution([0]));
assert([1] === solution([1]));

// No zero / non-zero
assert([0, 0, 0] === solution([0, 0, 0]));
assert([1, 2, 3] === solution([1, 2, 3]));
assert([1, 2, 3, 4] === solution([1, 2, 3, 4]));

echo 'OK' . PHP_EOL;

exit(0);
