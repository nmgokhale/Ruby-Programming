# Write a method greatest_factor_array that takes in an array of numbers and
# returns a new array where every even number is replaced with it's greatest factor.
# A greatest factor is the largest number that divides another with no remainder.
# For example the greatest factor of 16 is 8.
# (For the purpose of this problem we won't say the greatest factor of 16 is 16, because that would be too easy, ha)

def greatest_factor_array(arr)
  greatest_factor = []
  arr.each do |num|
    if num % 2 == 0
      greatest_factor << findGreatestFactor(num)
    else
      greatest_factor << num
    end
  end
  return greatest_factor
end

def findGreatestFactor(num)
  factors = []
  i = num - 1
  while i >= 2
    if num % i == 0
      return i
    end
    i -= 1
  end
  return num  # if the number is a prime number which doesn't have any factors other than itself, return the number
end


print greatest_factor_array([16, 7, 9, 14]) # => [8, 7, 9, 7]
puts
print greatest_factor_array([30, 3, 24, 21, 10]) # => [15, 3, 12, 21, 5]
puts
