# Getting Input from user
# gets - when this method is called, it will halt the code execution until user hits enter from keyboard

p "enter your name"
name = gets
p "Hello " + name # "Hello Neha\n"

# Dealing with New Lines
# every string returned from gets will end in \n
# We should be very aware of this extra character when using gets. 
# Common mistake - 
puts "Enter 'yes' or 'no'"
response = gets
if response == "yes"
    p "yup!"
elsif response == "no"
    p "nah!"
else
    p "I'm sorry! my responses are limited"
end

# if the user enters a valid response of yes the conditional would not be able to catch this. 
# This is because gets will really return "yes\n". "yes" is not equal to "yes\n"

# Chomping New Lines
# chomp - method to remove \n at the end of the string
my_string = "yes\n"
p my_string # "yes\n"
p my_string.chomp # "yes"

# Getting numbers - 
# gets will always return a string of characters. 
# So if the user intended to enter the number 42, num would really be the string "42".
# String.to_i - convert string to number
puts "Enter a number"
num = gets.chomp.to_i
p 2 * num