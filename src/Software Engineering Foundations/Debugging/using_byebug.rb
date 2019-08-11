require "byebug"

def average(a, b)
    sum = a + b 
    sum / 2.0
end

debugger  # method called to use byebug
first_result = average(15, 20)
second_result = first_result + 0.5

p second_result

# continue - to exit out of debugging mode & execute rest of the code
# next - to go to the next step
# display - show the variables at current step
# step - step-by-step execution
# break line# - add a break point on line#
# l 3-22 - list line# from 3 to 22 in debugger console
# exit - exit byebug

# Read notes again! This is not complete notes.