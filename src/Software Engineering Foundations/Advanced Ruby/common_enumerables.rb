# all? 
# Return true if all elements result in true when passed in the block
p [2, 4, 6].all? { |num| num.even?} # true
p [2, 3, 4].all? { |num| num.even? } # false

# any?
# Return true if atleast one element results in true
p [1, 3, 5].any? { |num| num.even? } # false
p [1, 2, 4].any? { |num| num.even? } # true
p [2, 3, 5].any? { |num| num.even? } # true

# one?
# Return true if exactly one element results in true
p [2, 3, 4].one? { |num| num.even? } # false
p [2, 3, 5].one? { |num| num.even? } # true

# none?
# Return true if no elements result in true
p [1, 3, 5].none? { |num| num.even? } # true
p [2, 1, 3].none? { |num| num.even? } # false

# flatten
p [['a', 'b', 'c'], ['d', 'e'], ['f']].flatten  # ["a", "b", "c", "d", "e", "f"]

# count
# counts the # of elements in array
p [1, 2, 3, 4, 5, 6, 10].count # 7

# sum
# Returns the sum of all elements in array
p [1, 2, 3, 4, 5, 6, 10].sum # 31

# max
# Returns maximum element in array
p [10, -5, 7].max # 10

# min
# Returns minimum element in array
p [-10, -20, -90].min # -90