# to print in ruby -
# print
# puts
# p

# print - Won't add new line at the end of the print
print "hello"
print "world" # helloworld

# To manually add a new line, you use \n
#  To manually add a new tab, you use \t
print "hello\n"  # hello
print "\t world" #    world

# puts - adds a new line at the end
puts "hello"  # hello
puts "world"  # world

# p - prints data with a new line and also gives info on type of data printed
p "hello" # "hello"
p 'world' # "world"
p "45"    # "45"
p 45      # 45

# we are able to differentiate the string "42" from the number 42 because
# the p method will actually print out the quotes that wrap the string data.

# it doesn't matter if we wrap a string in double quotes or single quotes,
# it is still a string (in a later course we'll learn a slight distinction between the two).
