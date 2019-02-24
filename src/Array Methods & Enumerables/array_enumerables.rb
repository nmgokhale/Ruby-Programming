# Enumerable Methods
# array
#   .each
#   .each_with_index
# string
#   .each_char
#   .each_char.with_index

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
