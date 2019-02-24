# While loop
# While the condition of a loop is true, keep running the loop
# once the condition is false, stop the loop

def repeatCounter()
  puts "Before the loop"
  counter = 0
  while counter < 5
    puts counter
    counter += 1
  end
  puts "After the loop"
end

repeatCounter()

# While loop - decrementing

def printNums
  i = 10
  while i >= 0
    puts i
    i -= 1
  end
end

printNums()

# While loop with parameters
def printRange(min, max, step)
  while min <= max
    puts min
    min += step
  end
end

puts '----------'
printRange(1, 4, 1)
puts '----------'
printRange(11, 20, 2)
puts '----------'
#  Using break & next to control loops
# break - immediately exit
i = 1
while i <= 10
  puts i
  if i == 5
    break
  end
  puts i
  i += 1
end

puts "loop end"
# 1 1 2 2 3 3 4 4 5 loop end

# next - skip to the next iteration
i = 1
while i <= 10
  puts i
  if i == 5
    i += 1
    next
  end
  puts i
  i += 1
end

# 1 1 2 2 3 3 4 4 5 6 6 7 7 8 8 9 9 10 10
