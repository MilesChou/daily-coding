function solution(x)
    local function fin(a, b, n)
        if n == 0 then
            return b
        end
        return fin(b, a + b, n - 1)
    end

    return fin(0, 1, x)
end

-- Testing using Busted
-- See http://olivinelabs.com/busted

describe("staircase test", function()
    it("all example tests", function()
        assert.are.equal(1, solution(1))
        assert.are.equal(2, solution(2))
        assert.are.equal(3, solution(3))
        assert.are.equal(5, solution(4))
        assert.are.equal(8, solution(5))
        assert.are.equal(13, solution(6))
    end)
end)