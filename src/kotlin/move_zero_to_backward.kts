fun solution(nums: MutableList<Int>): MutableList<Int> {
    var lastZero = 0

    for ((i, num) in nums.withIndex()) {
        if (num != 0) {
            nums.set(lastZero, num)
            nums.set(i, 0)
            lastZero++
        }
    }

    return nums
}

if (!"[1, 3, 12, 0, 0]".equals(solution(mutableListOf(0, 1, 0, 3, 12)).toString())) {
    println("FAIL")
}


if (!"[2, 1, 3, 4, 0, 0, 0, 0, 0, 0]".equals(solution(mutableListOf(0, 0, 0, 2, 0, 1, 3, 4, 0, 0)).toString())) {
    println("FAIL")
}
