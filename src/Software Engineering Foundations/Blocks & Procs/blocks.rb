# Block Basics
# There are two ways to pass a block into a method.
# We can use {...} brace syntax for blocks that only contain a single line of code:
p [1, 2, 3].map { |num| -(num * 2) } # [-2, -4, -6]

# Or, we can use do...end syntax for multiline blocks:
new_arr =  [1, 2, 3].map do |num|
    doubled = num * 2
    - doubled
end

p new_arr # [-2, -4, -6]

# Blocks can accept parameters if we name them between pipes (|param_1, param_2, etc.|).
# Blocks are somewhat similar to methods in that both can contain lines of code as well as take in parameters. 
# However, an important distinction to make is that the return keyword pertains to methods, not blocks.

# Correct:
def double_eles(arr)
  arr.map do |ele|
    ele * 2
  end
end
double_eles([1,2,3]) #=> [2,4,6]


# Incorrect:
def double_eles(arr)
  arr.map do |ele|
    return ele * 2
  end
end
double_eles([1,2,3]) #=> 2

# In other words, using return in a block will not make the block evaluate to the return value. 
# The return will force the outer method to evaluate to the return value. 
# This is a huge reason why we should treat blocks and methods as somewhat distinct concepts.

# Using Methods as Blocks
# It is very, very common to have blocks that take an argument and call a single method. For example:
["a", "b", "c"].map { |str| str.upcase }  #=> ["A", "B", "C"]
[1, 2, 5].select { |num| num.odd? }       #=> [1, 5]

# Ruby allows us to use cleaner syntax when we have simple blocks that follow the above pattern. 
# Let's refactor the above example to use this shortcut:
["a", "b", "c"].map(&:upcase) #=> ["A", "B", "C"]
[1, 2, 5].select(&:odd?)      #=> [1, 5]

# you can use to optimize some blocks. 
# If you are calling a method like map, passing a block that has this general structure:
array.map { |block_param| block_param.method }

# Then you can rewrite it as:
array.map(&:method)

# When employing this trick, be aware of what &:method you are using. The method you choose should be compatible with your data:
["a", "b", "c"].map(&:upcase) # => ["A", "B", "C"]
[1, 2, 3].map(&:upcase)       # NoMethodError: undefined method 'upcase' for Integer
# The second map is invalid because we can't use upcase on numbers!