# Write a method factorial(num) that takes in a number num and
# returns the product of all numbers from 1 up to and including num.
def factorial(num)
	answer = 1
  	count = 1
  	while count <= num
      answer *= count
      count += 1
    end
  return answer
end

puts factorial(3) # => 6, because 1 * 2 * 3 = 6
puts factorial(5) # => 120, because 1 * 2 * 3 * 4 * 5 = 120x`
