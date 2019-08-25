def solution(list, k)
  list.uniq.sort.reverse[k - 1]
end

# Test case
raise "ERROR" unless 5 == solution([3, 5, 2, 4, 6, 8], 3)

# Test min and max
raise "ERROR" unless 2 == solution([3, 5, 2, 4, 6, 8], 6)
raise "ERROR" unless 8 == solution([3, 5, 2, 4, 6, 8], 1)

# Test non-unique list
raise "ERROR" unless 5 == solution([3, 5, 2, 2, 6, 4, 4, 6, 8], 3)
raise "ERROR" unless 2 == solution([3, 5, 2, 2, 6, 4, 4, 6, 8], 6)
raise "ERROR" unless 8 == solution([3, 5, 2, 2, 6, 4, 4, 6, 8], 1)
