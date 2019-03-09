# splat (*) operator in Ruby.
# Using splat to accept additional arguments
#  if we want our method to have the ability to accept at least two arguments with potentially more, 
# we can add a splat parameter. 
# The additional arguments will be gathered into an array for us to use as we see fit:
def method(arg_1, arg_2, *other_args)
    p arg_1         # "a"
    p arg_2         # "b"
    p other_args    # ["c", "d", "e"]
end

method("a", "b", "c", "d", "e")

# If we pass in exactly two arguments, then other_args will be an empty array:
def method(arg_1, arg_2, *other_args)
    p arg_1         # "a"
    p arg_2         # "b"
    p other_args    # []
end

method("a", "b")

# we should use splat at the end of the parameter list to avoid confusion.

# Using splat to decompose an array
# use splat to decompose or unpack elements of an array. 
# Let's say we had an array containing some elements, 
# but we wanted each individual element to become an argument:
def greet(first_name, last_name)
    p "Hey " + first_name + ", your last name is " + last_name
end

names = ["Grace", "Hopper"]
greet(*names)    # => "Hey Grace, your last name is Hopper"

# Another way to use splat for arrays
arr_1 = ["a", "b"]
arr_2 = ["d", "e"]
arr_3 = [ *arr_1, "c", *arr_2 ]
p arr_3 # => ["a", "b", "c", "d", "e"]

# Using splat to decompose a hash
# We can use a double splat (**) to perform a similar unpacking of a hash's key-value pairs. 
# Double splat will only work with hashes where the keys are symbols:
old_hash = { a: 1, b: 2 }
new_hash = { **old_hash, c: 3 }
p new_hash # => {:a=>1, :b=>2, :c=>3}

# Splat lecture
def say_hello(first_name, last_name)
    p first_name
    p last_name
end
say_hello("Neha", "Gokhale") # "Neha" "Gokhale"

# say_hello("Neha", "Gokhale", "Developer") # ./splat_operator.rb:50:in `say_hello': wrong number of arguments (given 3, expected 2) (ArgumentError)

def say_hello_copy(first_name, last_name, *other_args)
    p first_name
    p last_name
    p other_args
end

say_hello_copy("Neha", "Gokhale", "Developer", "Avocado", "Mani") # "Neha" "Gokhale" ["Developer", "Avocado", "Mani"]
# say_hello() # ./splat_operator.rb:50:in `say_hello': wrong number of arguments (given 0, expected 2) (ArgumentError)

# unpacking array using splat operator
names = ["Neeraj", "Dixit"]
# say_hello_copy(names) # ./splat_operator.rb:58:in `say_hello_copy': wrong number of arguments (given 1, expected 2+) (ArgumentError)
say_hello_copy(*names) # "Neeraj" "Dixit" []

developers = ["Neha", "Noah", "Courtney", "Rosie"]
new_developers = [ developers ]
p new_developers # [["Neha", "Noah", "Courtney", "Rosie"]]

new_developers_copy = [ *developers, "Igor", "Fleury" ]
p new_developers_copy # ["Neha", "Noah", "Courtney", "Rosie", "Igor", "Fleury"]

# splat operator with hash -- keys need to be symbols. They can't be strings
hash = { a: 1, b: 2}
new_hash = {**hash, c: 3, d:4 }
p new_hash # {:a=>1, :b=>2, :c=>3, :d=>4}