# Different memory but same content
word_1 = "boot"
word_2 = "boot"
p word_1.object_id # 42374020
p word_2.object_id # 42373340

word_1[0] = "r"
p word_1 # "root"
p word_2 # "boot"

# Different variables but same memory
word_1 = "cat"
word_2 = word_1
p word_1.object_id # 43903120
p word_2.object_id # 43903120

word_1[0] = "r"
p word_1 # "rat"
p word_2 # rat

# String Mutation - you're changing the content, but not changing memory location
str = "Hello"
p str.object_id # 43542040
 
str.upcase!
p str # "HELLO"
p str.object_id # 43712560

# String Reassign value to variable - It changes memory address
# Reassigning is different than mutation
str = "Hello"
p str.object_id # 43754500

str = "bye"
p str.object_id # 43754200 - different memory location

# Creating an array of given length & assigning default value
arr = Array.new(10)
p arr # [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil]

arr = Array.new(10, "?") # assign a default value ?
p arr # ["?", "?", "?", "?", "?", "?", "?", "?", "?", "?"]
p arr.length # 10

arr[0] = 1
p arr # [1, "?", "?", "?", "?", "?", "?", "?", "?", "?"]

# Create multi-dimensional array - Wrong format
grid = Array.new(3, Array.new(3))
p grid # [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]
grid[0][0] = "x"
# Every 0th position changes overall! Classic variable reference mistake
# Each subarray references single memory location! So you change something, it's reflected in all 3 subArrays
p grid # [["x", nil, nil], ["x", nil, nil], ["x", nil, nil]] 

# Create multi-dimensional array - Correct format
grid = Array.new(3) { Array.new(3) } # Everytime it evaluates block, it creates a new subArray at new location
p grid # [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]
grid[0][0] = "x"

# Use block to create subArray so that every array is created at a new memory location
p grid # [["x", nil, nil], [nil, nil, nil], [nil, nil, nil]]
