# Write a method unique_elements that takes in an array and
# returns a new array where all duplicate elements are removed. Solve this using a hash.
def unique_elements(arr)
  my_hash = Hash.new(0)
  arr.each do |element|
    my_hash[element] += 1
  end
  return my_hash.keys
end

print unique_elements(['a', 'b', 'a', 'a', 'b', 'c']) #=> ["a", "b", "c"]
puts
