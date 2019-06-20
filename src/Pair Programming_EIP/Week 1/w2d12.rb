# Given an array, move all zeros to the end. The order of non-zero elements does not matter.
# Algorithm should be O(n); use O(1) extra space.
# Method Signature
# move_zeros(array arr)
# Example input/output
# > move_zeros([1, 2, 0, 3, 4, 0, 5, 6, 0]) // = [1, 2, 6, 3, 4, 5, 0, 0, 0]
#
# ----

def move_zeros(arr)
  i = 0, j = arr.length-1
  arr.each do |ele|
    while arr[i] != 0 || arr[j] == 0
      i += 1
      j -= 1
    end
  end
  p i
  p j
end
# def move_zeros(arr)
#   answer = []
#   arr.reverse.each do |ele|
#     if ele != 0
#       answer.unshift(ele)
#     else
#       answer.push(ele)
#     end
#   end
#   answer
# end


p move_zeros([1, 2, 0, 3, 4, 0, 5, 6, 0])  # [1, 2, 3, 4, 5, 6, 0, 0, 0]
