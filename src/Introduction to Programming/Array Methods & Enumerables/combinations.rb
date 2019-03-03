# Write a method combinations that takes in an array of unique elements,
# the method should return a 2D array representing all possible combinations of 2 elements of the array.
def combinations(array)
  two_dim_arr = []
  array.each_with_index do |element1, idx1|
    array.each_with_index do |element2, idx2|
      if idx2 > idx1
        temp_arr = []
        temp_arr.push(element1, element2)
        two_dim_arr.push(temp_arr)
      end
    end
  end
  return two_dim_arr
end

print combinations(["a", "b", "c"]); # => [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]
puts

print combinations([0, 1, 2, 3]); # => [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]
puts
