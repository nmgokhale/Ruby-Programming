# hashes
# default value nil -- when you try to access key that doesn't exist in hash
# Hash.new(default)
# counter hash
# sort_by
# nil
# represents nothing or empty
# commonly appears as a default value


my_hash = {
  "a" => 28
}
puts my_hash["a"]
puts my_hash["b"] # nil

puts my_hash["b"] == nil # true

# Assign default value to Hash
my_hash = Hash.new(0) # 0 will be a default value
puts my_hash["b"] # 0

my_hash["a"] = "Hey There!"
puts my_hash # {"a"=>"Hey There!"}

# create a hash where each key is a unique character & every value is no. of times that char appears in a string
str = "bootcamp prep"
counter = Hash.new(0) # assign a default value 0
str.each_char do |char|
  counter[char] += 1
end

puts counter # {"b"=>1, "o"=>2, "t"=>1, "c"=>1, "a"=>1, "m"=>1, "p"=>3, " "=>1, "r"=>1, "e"=>1}

# counter Hash
str = "mississippi river"
count = Hash.new(0)
puts count['m'] # 0
str.each_char do |char|
  count[char] += 1
end

puts count # {"m"=>1, "i"=>5, "s"=>4, "p"=>2, " "=>1, "r"=>2, "v"=>1, "e"=>1}
print count.sort_by { |k, v| v } # sort hash by value [["e", 1], ["v", 1], [" ", 1], ["m", 1], ["r", 2], ["p", 2], ["s", 4], ["i", 5]]
puts

print count.sort_by { |k, v| k } # sort hash by key [[" ", 1], ["e", 1], ["i", 5], ["m", 1], ["p", 2], ["r", 2], ["s", 4], ["v", 1]]
puts

sorted = count.sort_by { |k, v| v }
print sorted
puts

# to get the character repeated max times
puts sorted[-1][0] # i
