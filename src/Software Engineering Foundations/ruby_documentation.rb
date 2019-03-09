# Using Documentation Ruby-doc
# 
# 
# all?
# any?
# none?
# count
# flatten

p [['a', 'b' ], 'c'].flatten # [a, b, c]


# if all elements in the array satisfy the condition in block code, return true else return false
p [2, 4, 6].all? { |num| num.even? } # true
p [2, 4, 5, 6].all? { |num| num.even? } # false

# if any 1 element in the array satisfy the condition in block code, return true else return false
p [2, 4, 6].any? { |num| num.even? } # true
p [2, 4, 5, 6].any? { |num| num.even? } # true
p [2, 3, 5, 7].any? { |num| num.even? } # true

 # if no elements in the array satisfy the condition in block code, return true else return false
p [2, 4, 6].none? { |num| num.even? } # false
p [2, 3, 5, 7].none? { |num| num.even? } # false
p [3, 5, 7].none? { |num| num.even? } # true

# count method counts the number of elements in the array which satisfy the block of code
p [2, 4, 6].count { |num| num.even? } # 3
p [2, 3, 5, 7].count { |num| num.even? } # 1
p [3, 5, 7].count { |num| num.even? } # 0