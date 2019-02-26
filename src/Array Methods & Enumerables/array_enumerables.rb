# Enumerable Methods
# array
#   .each
#   .each_with_index
# string
#   .each_char
#   .each_char.with_index

# Range Enumerable
# (start..end).each, iterate from start to end (inclusive)
#  (start...end).each, iterate from start to end (excluding end)

# Write a method fizzbuzz that takes in a number max and returns an array containing all
# numbers less than max that are divisible by 3 or 5 but not both

# number.times { puts "hey" } --> hey will be repeated number of times. Cleaner syntax

months = ["Jan", "Feb", "Mar", "Apr"]
# Method 1 - ONLY for SINGLE LINE of code
months.each { |month| puts month }  # Jan Feb Mar Apr
# Method 2 - for multiple lines of code
months.each do |month|
  puts month
  puts "---"
end

puts "----------------"

sentence = "Hello World"
# Method 1 - ONLY for SINGLE LINE of code
sentence.each_char { |singleChar| puts singleChar }
# Method 2 - for multiple lines of code
sentence.each_char do |singleChar|
  puts singleChar
  puts "---"
end

puts "----------------"

months = ["Jan", "Feb", "Mar", "Apr"]
months.each_with_index do |month, index|
  puts month
  puts index
  puts "---"
end

puts "----------------"

sentence = "Hello World"
sentence.each_char.with_index do |char, index|
  puts char
  puts index
  puts "---"
end

# Range Enumerable
(1..10).each { |num| puts num } # 1 2 3 4 5 6 7 8 9 10

puts "----------------"

(1...10).each { |num| puts num } # 1 2 3 4 5 6 7 8 9

puts "----------------"

# fizzbuzz Method
def fizzbuzz (max)
  answer = []
  (1...max).each do |num|
    if(num % 3 == 0 || num % 5 == 0) && !(num % 3 == 0 && num % 5 == 0)
      answer.push(num)
    end
  end
  return answer
end

print fizzbuzz(20)
puts
puts "----------------"

# number.times
4.times { puts "Hola!" } # Hola! Hola! Hola! Hola!
