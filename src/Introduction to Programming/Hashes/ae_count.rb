# Write a method ae_count that takes in a string and returns a hash containing the number of a's and e's in the string.
# Assume the string contains only lowercase characters.
def ae_count(str)
  ae_counter = Hash.new(0)
  my_hash = {}
  str.each_char do |char|
    if char == 'a' || char == 'e'
      ae_counter[char] += 1
    end
  end
  sorted =  ae_counter.sort_by {|key, val| key}
  my_hash[sorted[0][0]] = sorted[0][1]
  my_hash[sorted[1][0]] = sorted[1][1]
  return my_hash
end

puts ae_count("everyone can program") #=> {"a"=>2, "e"=>3}
puts ae_count("keyboard") #=> {"a"=>1, "e"=>1}
