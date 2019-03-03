# Methods

# Define a Method
def greetingMessage
  puts "Hello World"
  puts "How are you?"
end

# Call a method
puts "Before the method call"
greetingMessage
puts "After the method call"

# Output
# Before the method call
# Hello World
# How are you?
# After the method call

# Method Parameters
def say_hello(name)
  puts "Hello " + name +"!"
end

say_hello('Neha') # Hello Neha!
say_hello('Amruta') # Hello Amruta!

# Method multiple Parameters
def say_hi(name1, name2)
  puts "Hi " + name1 + " and " + name2 + "."
end

say_hi("Radhika", "Shreya") # Hi Radhika and Shreya.

# Method Returning a value
def calc_average(num1, num2)
  return (num1 + num2) / 2.0
end
# Return keyword lets a method call evaluate to a value
average = calc_average(5, 10) # 7.5
puts average + 1 # 8.5


# Parentheses are optional in Ruby
def greet
  puts "hello world"
end

# Below are two valid ways to call the greet method.
greet   # this is preferred since greet does not expect parameters
greet()

# Parentheses are also optional when calling methods that do expect parameters.
# However, we prefer to call methods with parentheses in that scenario:
def greet(name)
  puts "hey " + name
end

# Below are two valid ways to call the greet method.
greet "programmers"
greet("programmers") # this is preferred since greet does expect parameters

# Terminology - Variables, Parameters, Arguments
# Arguments are the concrete data values we pass into method calls.
# Parameters are the "placeholders" that we use to write a general method.

# Variables are names that can hold data. Below, food is a variable that holds the value "toast":
food = "toast"

# Parameters are the names that can hold data in a method definition.
# Parameters are are placed in parentheses following the method's name.
# Below food and drink are parameters. sentence is a normal variable; it is not a parameter:
def meal(food, drink)
    sentence =  "I like to eat " + food + " with a cup of " + drink
    puts sentence
end

# Arguments are the data values that we pass into a method when we call the method.
# We place arguments in the parentheses of a method call.
# Those argument values will be assigned to the parameters when we evaluate the method.
# Below, "toast", "coffee", "pancakes", "orange juice" are arguments:
def meal(food, drink)
  sentence =  "I like to eat " + food + " with a cup of " + drink
  puts sentence
end

meal("toast", "coffee") # Here we pass "toast" and "coffee" into our method.
meal("pancakes", "orange juice") # We can also pass "pancakes" and "orange juice" in another call
