# 1st line of the file you want to debug:
require 'byebug'

# add this at the line from where you have to start debugging:
debugger

# Where you are in the code: 
list=

# Watching a variable: 
display variable_name

# Step into the loop:
s 

# Go to next line:
n 

# continue to next loop:
c 

# add a breakpoint at line:
break line_number

# exit from byebug:
exit

# Looking at the call stack:
where 

# conditional debugger:
[3, 12] in building.rb
    3:     @temperature = 70
    4:   end
    5:
    6:   def set_thermostat(temp)
    7:     debugger if temp > 90  # debugger will be activated only if condition is true
=>  8:     @temperature = temp
    9:   end
   10: end
   11:
   12: house = Building.new
   
(byebug) where

--> #0  Building.set_thermostat(temp#Integer) at building.rb:8
    #1  <main> at building.rb:21
(byebug)

