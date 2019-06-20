def max_consecutive_sum(numbers)
  current_max = sum_current_subarray = 0
  numbers.each do |num| # num 4
    sum_current_subarray = [num, (sum_current_subarray + num)].max # 6
    current_max = [current_max, sum_current_subarray].max # 7
  end
  current_max
end

# Time - O(n)
# Space - O(1)
