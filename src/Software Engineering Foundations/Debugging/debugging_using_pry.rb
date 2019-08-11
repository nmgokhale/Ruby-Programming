# You can begin a pry session by simply using the command pry in your command line.
# You need to do this in Terminal

# pry
# [1] pry(main)> greens = ["kale", "spinach", "arugula"]
# => ["kale", "spinach", "arugula"]
# [2] pry(main)> greens << "broccoli"
# => ["kale", "spinach", "arugula", "broccoli"]
# [3] pry(main)> greens.length
# => 4

# ls - list methods that we can use in a given context
# You need to do this in Terminal
# ls String

# show-doc - to show a documentation summary for a given method
# You need to do this in Terminal
# show-doc String#end_with?

# show-source -  to see the code that implements a method
# You need to do this in Terminal
# show-source String#end_with?

# load - to load a ruby file in pry
# You need to do this in Terminal
# load "debugging_using_pry.rb"
p "Hello from ruby file"