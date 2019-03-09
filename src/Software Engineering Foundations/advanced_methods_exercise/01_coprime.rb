# Write a method, coprime?(num_1, num_2), that accepts two numbers as args.
# The method should return true if the only common divisor between the two numbers is 1.
# The method should return false otherwise. For example coprime?(25, 12) is true because
# 1 is the only number that divides both 25 and 12.


# Optimized Solution
def coprime?(num_1, num_2)
    if num_1 < num_2
        smaller = num_1
    else
        smaller = num_2
    end
    (2..smaller).none? { |divisor| num_1 % divisor == 0 && num_2 % divisor == 0}
end

# def coprime?(num_1, num_2)
#     num_1_divisors = findFactors(num_1)
#     num_2_divisors = findFactors(num_2)
#     !num_1_divisors.any? { |element1| num_2_divisors.include?(element1) }
# end

# def findFactors(num)
#     factors = []
#     i = 2;
#     while i <= num
#         if num % i == 0
#             factors.push(i)
#         end
#         i += 1
#     end
#     return factors
# end

p coprime?(25, 12)    # => true
p coprime?(7, 11)     # => true
p coprime?(30, 9)     # => false
p coprime?(6, 24)     # => false
