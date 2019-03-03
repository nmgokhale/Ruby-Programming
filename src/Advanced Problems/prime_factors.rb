# Write a method prime_factors that takes in a number and
# returns an array containing all of the prime factors of the given number.

def prime_factors(num)
  factors = []
  # Store all the factors in an array
  (2..num).each do |divisor|
    if num % divisor == 0
      factors << divisor
    end
  end

  # loop through factors array and return only the prime prime prime factors
  if factors.length > 0
    return factors.select { |factor| checkIfPrime(factor) }
  else
    return factors
  end
end

def checkIfPrime(num)
  if num < 2
    return false
  end
  (2...num).each do |divisor|
    if num % divisor == 0
      return false
    end
  end
  return true
end

print prime_factors(0) # => []
puts
print prime_factors(24) #=> [2, 3]
puts
print prime_factors(60) #=> [2, 3, 5]
puts
