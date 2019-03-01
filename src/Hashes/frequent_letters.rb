# Write a method frequent_letters that takes in a string and
# returns an array containing the characters that appeared more than twice in the string.
def frequent_letters(str)
  count = Hash.new(0)
  frequent = []
  str.each_char do |char|
    count[char] += 1
  end

  count.each do |key, val|
    if val > 2
      frequent.push(key)
    end
  end
  return frequent
end

print frequent_letters('mississippi') #=> ["i", "s"]
puts
print frequent_letters('bootcamp') #=> []
puts
