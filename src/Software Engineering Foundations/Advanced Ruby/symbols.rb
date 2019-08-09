# Similar to string datatype
# always starts with : and doesn't require double quotes like in string
# symbols are IMMUTABLE -- Can't change
# strings are MUTABLE -- can change
# object_id -- gives you memory address of that string/ array/ symbol
# Every string is stored at a new memory location 
# Every symbol is stored at the same memory location
# Symbols can be used as keys in hash - using normal assignment & shorthand method

str = "Hello"
sym = :Hello

p str # "Hello"
p sym # :Hello

p str.length # 5
p sym.length # 5

p str[2] # "l"
p sym[2] # "l"

str[0] = "x"
p str # "xello"

# sym[0] = "x"  # `<main>': undefined method `[]=' for :Hello:Symbol (NoMethodError) Did you mean?  []
p sym # :Hello

# Every string is stored at a new memory location 
p "Hello".object_id # 43540860
p "Hello".object_id # 43540760
p "Hello".object_id # 43540680
p "Hello".object_id # 43540540

# Every symbol is stored at the same memory location
p :Hello.object_id # 1101348
p :Hello.object_id # 1101348
p :Hello.object_id # 1101348
p :Hello.object_id # 1101348

# Symbols in hash
my_job = { :name=>"IBM", :location =>"Atlanta", :post =>"Developer"}
p my_job # {:name=>"IBM", :location=>"Atlanta", :post=>"Developer"}
p my_job[:name] # "IBM"

# Shorthand
# When initializing a hash with symbol keys, Ruby offers a shortcut. We can drop the rocket (=>) 
# and move the colon (:) to the right of the symbol:
my_job = {name:"IBM", location:"Atlanta", post:"Developer"}
p my_job # {:name=>"IBM", :location=>"Atlanta", :post=>"Developer"}
p my_job[:location] # "Atlanta"