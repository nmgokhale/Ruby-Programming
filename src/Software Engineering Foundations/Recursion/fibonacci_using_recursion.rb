# Write a method fib(n) that takes in a number and returns the nth number of
# the fibonacci sequence.
# In the fibonacci sequence, the 1st number is 1 and the 2nd number is 1. To generate the
# next number in the sequence, we take the sum of the previous two fibonacci numbers.
# For example the first 5 numbers of the fibonacci sequence are `1, 1, 2, 3, 5`

def fib(n)
    return 1 if n == 1 || n == 2
    fib(n-1) + fib(n-2)
end

p fib(5) # 5
p fib(8) # 21
p fib(10) # 55
p fib(25) # 75025
p fib(50)