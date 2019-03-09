# Similar to string datatype
# always starts with : and doesn't require double quotes like in string
# symbols are IMMUTABLE -- Can't change
# strings are MUTABLE -- can change
# object_id -- gives you memory address of that string/ array/ symbol
# Every string is stored at a new memory location 
# Every symbol is stored at the same memory location
# Symbols can be used as keys in hash - using normal assignment & shorthand method

sym = :Hello 
str = "Hello" 

p sym # :Hello
p str # "Hello"

p sym.length # 5 
p str.length # 5 

p sym[1] # "e"
p str[1] # "e"

p str[1] = "x"
p str # "Hxllo"

# p sym[1] = "x" # ./symbols.rb:20:in `<main>': undefined method `[]=' for :Hello:Symbol (NoMethodError) Did you mean?  []
p sym # :Hello

# Every string is stored at a new memory location 
p "Hello".object_id # 43312700
p "Hello".object_id # 43312600
p "Hello".object_id # 43312540
p "Hello".object_id # 43312480

# Every symbol is stored at the same memory location
p :Hello.object_id # 1101348
p :Hello.object_id # 1101348
p :Hello.object_id # 1101348
p :Hello.object_id # 1101348

# symbols in hash
bootcamp = {:name => "Neha", :color => "Black", :age => 27}
p bootcamp # {:name=>"Neha", :color=>"Black", :age=>27}

bootcamp_1 = {name: "Neha", color: "Black", age: 27}
p bootcamp_1 # {:name=>"Neha", :color=>"Black", :age=>27}


p bootcamp_1[:name] # "Neha"