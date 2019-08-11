module Staircase
  def self.solution(x : UInt32)
    return fin(0, 1, x)
  end

  def self.fin(a : UInt32, b : UInt32, n : UInt32)
    if n == 0
      return b
    end

    return fin(b, a + b, n - 1)
  end
end
