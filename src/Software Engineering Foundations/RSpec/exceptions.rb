#  begin...rescue
# The code in the begin block will execute until an exception is reached. 
# Once an exception is reached, the execution will immediately jump to rescue.

num = 0
begin
    puts "dividing 10 by #{num}"
    ans = 10/num
    puts "the answer is #{ans}"
rescue
    puts "there was an error in that division"
end

puts "------------"  # dividing 10 by 0
puts "finished"      # there was an error in that division
                     # ------------
                     # finished

# In the event that an exception is never hit in the begin block, then execution will never go to rescue

begin
  puts "dividing 10 by #{num}"
  ans = 10 / num
  puts "the answer is #{ans}"
rescue
  puts "There was an error with that division."
end

puts "--------"
puts "finished"

# Output: 
# dividing 10 by 5
# the answer is 2
# --------
# finished

# Raise an exception
# Say your method accepts 2 string arguments. You need to raise an exception if either of them is not a string
def format_name(first, last)
    if !(first.instance_of?(String) && last.instance_of?(String))
        raise "arguments must be strings"
    end
    first.capitalize + " " + last.capitalize
end

p format_name("NEHA", "gokhale") # "Neha Gokhale"
# p format_name(50, "gokhale") # ./exceptions.rb:42:in `format_name': arguments must be strings (RuntimeError)


# begin...rescue & raise
def format_name(first, last)
  if !(first.instance_of?(String) && last.instance_of?(String))
    raise "arguments must be strings"
  end

  first.capitalize + " " + last.capitalize
end

first_name = 42
last_name = "ray"
begin
    p format_name(first_name, last_name)
rescue
    # do stuff to rescue the "arguments must be strings" exception..
    p "there was an exception :("
end

# output:
# "Neha Gokhale"
# "there was an exception :("


