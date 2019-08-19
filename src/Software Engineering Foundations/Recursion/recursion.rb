#  Recursion is when a method calls itself. 

# A recursive method consists of two fundamental parts:
# the base case where we halt the recursion by not making a further call
# the recursive step where we continue the recursion by making another subsequent call

# Solving a Problem Recursively:
# Because every recursive problem must have a base and recursive case, we can follow these steps to help us write a recursive method:

# Identify the base case in the problem and code it. The base case should explicity handle the scenario(s) where the arguments are so trivially "small", that we immediately know the result without further calculation. Be sure it works by testing it.
# Solve the next level of the problem, using the result of the base case. Test it.
# Modify the code in step 2, generalizing it for every level of the problem.

# Recursion is used to solve problems that can be decomposed into smaller versions of the same problem. 

def count_down(num) 
    # base case
    if num === 0
        p "Houston, we have lift-off!"
        return;
    end

    p num
    # recursive step
    count_down(num - 1)
end

count_down(10)

# def say_hello
#     p "Hello"
#     say_hello
# end
# say_hello # Error -  stack level too deep (SystemStackError)

