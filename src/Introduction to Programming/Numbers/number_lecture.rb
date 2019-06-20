# Number Lecture

puts 1 + 1 # 2
puts -5 + 3 # -2
puts 2.5 + 0.5 # 3.0
puts 10 - 8 # 2
puts 5 * 5 # 25
puts 5 / 2 # 2  - if you divide by whole numbers, ruby ignores decimal part
puts 9.0 / 2 # 4.5 - to get accurate answer, use decimal numbers as your divisors or dividend

# Ruby also follows BODMAS
# Order of operations follow Parentheses, Multiplication-Division, Addition-Subtraction
puts 6 + 4 / 2 # 8
puts (6 + 4) / 2 # 5
puts 6 * 4 / 2 # 12
puts 8 / 4 * 2 # 4

# Modulo gives us the reminder of Division
puts 13 % 5 # 13 / 5 = 2 r 3
puts 14 % 5 # 14 / 5 = 2 r 4
puts 15 % 5 # 15 / 5 = 3 r 0
