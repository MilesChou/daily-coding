<?php

/**
 * @param string $str
 * @return int
 */
function solution($str)
{
    $len = strlen($str);
    $stack = [];

    foreach (str_split($str) as $char) {
        if (in_array($char, $stack, true)) {
            $stackLen = count($stack);
            $subStackLen = $len - $stackLen;

            if ($stackLen < $subStackLen) {
                $stack = [$char];
            } else {
                return $stackLen;
            }
        } else {
            $stack[] = $char;
        }
    }

    return count($stack);
}

// Example test
assert(10 === solution('abrkaabcdefghijjxxx'));

// All unique test
assert(10 === solution('abcdefghij'));

// Pre repeat test
assert(10 === solution('aabcdefghij'));

// Post repeat test
assert(10 === solution('abcdefghijjjj'));

// Only one char test
assert(1 === solution('aaaaaaaaa'));

// Only two char test
assert(2 === solution('ababababab'));

echo 'OK' . PHP_EOL;

exit(0);
