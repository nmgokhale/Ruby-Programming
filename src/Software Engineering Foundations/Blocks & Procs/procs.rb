# A proc is an object that contains a block. 
# We need procs because they allow us to save blocks to variables so we can manipulate them in our code.

# Creating a Proc - 
# we can turn the block into a proc and pass that proc into a method to be executed
# proc is a wrapper around a block!
doubler = Proc.new { |num| num * 2 }
p doubler  #<Proc:0x0000000005249aa0@./procs.rb:7>

# we can save the proc to a variable, doubler. 
# This is an important fact about procs. In comparison, we cannot save a plain block to a variable:
# incorrect
# doubler = { |num| num * 2 } # SyntaxError: unexpected '}'

# Calling a proc - Proc#call
doubler = Proc.new { |num| num * 2 }
p doubler.call(5) # => 10
p doubler.call(7) # => 14

# We can also call the proc as many times as we please! 
# Multiline block with proc
is_even = Proc.new do |num|
    if num % 2 == 0
        true
    else
        false
    end
end

p is_even.call(14) # true

# Passing a proc to method
def add_and_proc(num1, num2, proc)
    sum = num1 + num2
    p proc.call(sum)
end

doubler = Proc.new { |num| num * 2 }
add_and_proc(1, 4, doubler) # 10

square = Proc.new { |num| num * num }
add_and_proc(3, 6, square) # 81

negate = Proc.new { |num| -1 * num }
add_and_proc(3, 6, negate) # -9


# By using the & operator on the third parameter, # ruby knows to automatically convert the block into proc for us.
# Version 1: manual, proc accepting method
def add_and_proc(num_1, num_2, prc)
  sum = num_1 + num_2
  p prc.call(sum)
end

doubler = Proc.new { |num| num * 2 }
add_and_proc(1, 4, doubler)   # => 10


# Version 2: automatic conversion from block to proc
def add_and_proc(num_1, num_2, &prc)
  sum = num_1 + num_2
  p prc.call(sum)
end

add_and_proc(1, 4) { |num| num * 2 }  # => 10

# two general tips that you can use to reason out whether a method expects a proc or a block.
def my_method(prc)
  # ...
end
# By looking at the parameter `prc` we know that my_method must be passed a proc:
my_proc = Proc.new { "I'm a block" }
my_method(my_proc)


def my_method(&prc)
  # ...
end
# By looking at the parameter `&prc` we know that my_method must be passed a block,
# because & denotes conversion from block to proc here:
my_method { "I'm a block" }

# Using & - 
#  To convert block into proc
# Also to convert proc into block

# &prc is converting a block to a proc. If we try to pass our method the doubler proc, we will get an error.
#  This is because doubler is a proc, not a block!
def add_and_proc(num_1, num_2, &prc)
  sum = num_1 + num_2
  p prc.call(sum)
end
doubler = Proc.new { |num| num * 2 }
add_and_proc(1, 4, doubler)   # Error

# However, we can use & again to convert a proc to a block. 
# In other words, if doubler is a proc, then &doubler is a block:
def add_and_proc(num_1, num_2, &prc)
  sum = num_1 + num_2
  p prc.call(sum)
end
doubler = Proc.new { |num| num * 2 }
add_and_proc(1, 4, &doubler)   # => 10

# Another example -
# We know that map is a built-in method that must be given a block:
[1,2,3].map { |num| num * 2 } # => [2, 4, 6]

# However, if we have a proc and want to use it with map, we can use & to convert it to a block:
doubler = Proc.new { |num| num * 2 }
[1,2,3].map(&doubler) # => [2, 4, 6]

