const assert = require('assert');

function solution(x) {
    const fin = function (temp, n) {
        if (n === 0) {
            return temp[1];
        }

        return fin([temp[1], temp[0] + temp[1]], n - 1);
    }

    return fin([0, 1], x);
}

assert.strictEqual(1, solution(1));
assert.strictEqual(2, solution(2));
assert.strictEqual(3, solution(3));
assert.strictEqual(5, solution(4));
assert.strictEqual(8, solution(5));
assert.strictEqual(13, solution(6));

console.log('staircase pass');
