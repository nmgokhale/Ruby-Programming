# Given an array of integers, return all pairs that sum up to a specified value k. List the pairs in [min, max] order.

# Method Signature
# pair_sum(array arr, integer k)
#
# Example input/output
# pair_sum([1, 2, -1], 0)          // = [ [-1, 1] ]
#
# pair_sum([1, 2, -1, -1], 0)      // = [ [-1, 1] ]
#
# pair_sum([1, 2, -1, -1, -2], 0)  // = [ [-1, 1], [-2, 2] ]

# def pair_sum(array arr, integer k)
#   sum = 0
#   len = arr.length
#
#
# end

def sum_of_all_pairs(arr, sum)
  answer = []
  arr.each_with_index do |ele, idx|
    while idx < arr.length - 1
      if ele + arr[idx + 1] == sum
        if ele < arr[idx + 1]
          temp_arr = [ele, arr[idx + 1]]
        else
          temp_arr = [arr[idx + 1], ele]
        end
        if !answer.include?(temp_arr)
          answer.push(temp_arr)
        end        
      end
      idx = idx + 1
    end
  end
  return answer
end

print sum_of_all_pairs([1, 2, -1], 0)
puts
print sum_of_all_pairs([1, 2, -1, -1], 0)
puts
print sum_of_all_pairs([1, 2, -1, -1, -2], 0)

# puts pair_sum([1, 2, -1], 0)
