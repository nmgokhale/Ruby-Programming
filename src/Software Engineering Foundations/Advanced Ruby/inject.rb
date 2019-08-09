# Ruby has both an inject and a reduce method. Both are functionally identical.
# 
# inject will iterate through the array, passing in the current element to the block.
# inject will maintain an accumulator that will change over time, depending on our block. 
# The block should return what the new accumulator should be after a single iteration.
[11, 7, 2, 4].inject { |acc, el| acc + el }
# FIRST ITERATION:
# acc = 11
# el = 7
# new_acc = 18
# SECOND ITERATION:
# acc = 18
# el = 2
# new_acc = 20
# 
# The key to understanding inject is to remember that the accumulator will be reassigned 
# to the result of the block on every iteration.
# Find Minumum value - 
result =  [11, 7, 2, 4].inject do |acc, el|
    if el < acc
        el
    else
        acc
    end
end 

p result # => 2

# Inject with a default accumulator
[11, 7, 2, 4].inject(100) { |acc, el| acc + el }
# FIRST ITERATION:
# acc = 100
# el = 11
# new_acc = 111
# SECOND ITERATION
# acc = 111
# el = 7
# new_acc = 118

# Lecture Notes:
arr = [2, 3, 1, 7]
p arr.inject { |acc, el| acc + el } # => 13

p arr.inject { |acc, el| acc * el } # => 42

p arr.inject(100) { |acc, el| acc + el} # => 113



p "----------------------------------------"
arr = [2, 3, 1, 7]
p arr.inject { |acc, el| acc + el}