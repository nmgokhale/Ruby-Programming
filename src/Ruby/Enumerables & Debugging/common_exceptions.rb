# NameError
# thrown when you try to use a variable or method that hasn't been defined
class NumbersClass
  def answer_number
    42
  end

  def loneliest_number
    1
  end

  def numbers
    [favorite_nmber, loneliest_number]
  end
end

[3] pry(main)> nc = NumbersClass.new
=> #<NumbersClass:0x007ff9dc12c608>
[4] pry(main)> nc.numbers
NameError: undefined local variable or method `favorite_nmber' for #<NumbersClass:0x007ff9dc12c608>
        from: /Users/ruggeri/test.rb:11:in `numbers'
        from: (pry):4:in `__pry__'

# Uninitialized Constant
# "Uninitialized constant" means that Ruby is trying to find a class (or other constant), but didn't find it. 
# This could be because of a class name typo, or often because we forgot to require 
# the Ruby file that loads the class.
[3] pry(main)> UnloadedClass.new
NameError: uninitialized constant UnloadedClass
        from: (pry):3:in '__pry__'


# NoMethodError
# thrown when it's clear the user wanted to call a method that doesn't exist:
[1] pry(main)> "my string".my_fantasy_method
NoMethodError: undefined method 'my_fantasy_method' for "my string":String
        from: (pry):1:in '__pry__'

# when a variable is nil when we don't expect this
# nil is an instance of the class NilClass, which doesn't have the method we want.
[5] pry(main)> my_array[0] # what if my_array == nil?
NoMethodError: undefined method '[]' for nil:NilClass
        from: (pry):2:in '__pry__'

# ArgumentError: wrong number of arguments
# If we don't give a method the right number of arguments, we will get an exception thrown at us:
[12] pry(main)> [1, 2, 3].shuffle("unwanted argument")
ArgumentError: wrong number of arguments (1 for 0)
        from: (pry):9:in 'shuffle'

# TypeError
# thrown if you pass the wrong type of thing to a method. For instance, numbers can only add other numbers:
[8] pry(main)> 2 + ""
TypeError: String cant be coerced into Integer
        from: (pry):8:in '+'

# This error normally occurs when you call a method with the wrong types of things. For instance:
[] + ""
[] + 2
"" + 2
"" + []
# None of these operations make sense; all of them will throw a TypeError.

# LoadError
# There are two very common causes. 
# 1) Sometimes you are trying to load a file that is provided by a gem, but you haven't installed the gem yet.
# 2) you are trying to load another source file in your project, but you forgot the initial './'.
[2] pry(main)> require 'primes.rb'
LoadError: cannot load such file -- primes.rb

[2] pry(main)> require './primes.rb'

# Of course, the file can be be in a subdirectory:
[2] pry(main)> require './path/to/source/file/primes.rb'

# SyntaxError
# This tells you that Ruby didnt understand your code.
# There are lots of sources of syntax errors. 
# The most common are forgetting to close quotes, parentheses, or do-end blocks.
[1, 2, 3].each do |num|
  puts num
# end should go here

[1] pry(main)> require './test.rb'
SyntaxError: /Users/ruggeri/test.rb:3: syntax error, unexpected $end, expecting keyword_end
        from: /Users/ruggeri/.rvm/rubies/ruby-1.9.3-p194/lib/ruby/site_ruby/1.9.1/rubygems/custom_require.rb:36:in 'require'
        from: /Users/ruggeri/.rvm/rubies/ruby-1.9.3-p194/lib/ruby/site_ruby/1.9.1/rubygems/custom_require.rb:36:in 'require'
        from: (pry):1:in '__pry__'

# Here $end means the end of the source file. 
# Here Ruby is telling you that it didn't expect the end of the file ($end) 
# before the keyword end (keyword_end in the error message).

# You can get a similar message with too many ends:

[1, 2, 3].each do |num|
  puts num
end
end # one too many

[2] pry(main)> load './test.rb'
SyntaxError: /Users/ruggeri/test.rb:4: syntax error, unexpected keyword_end, expecting $end
end # one too many
   ^
        from: (pry):2:in 'load'